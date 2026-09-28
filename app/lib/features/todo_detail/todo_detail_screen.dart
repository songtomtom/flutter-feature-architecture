import 'package:flow_todo/features/todo_detail/todo_detail_notifier.dart';
import 'package:flow_todo/features/todo_detail/todo_detail_state.dart';
import 'package:flow_todo/shared/widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TodoDetailScreen extends ConsumerWidget {
  const TodoDetailScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoDetailProvider(id));
    final notifier = ref.read(todoDetailProvider(id).notifier);

    ref.listen(todoDetailProvider(id), (_, next) {
      if (next is TodoDetailDeleted) context.pop();
    });

    return Scaffold(
      appBar: AppBar(title: const Text('상세')),
      body: switch (state) {
        TodoDetailLoading() =>
          const Center(child: CircularProgressIndicator()),
        TodoDetailNotFound() => const ErrorView(message: '할 일을 찾을 수 없습니다.'),
        TodoDetailDeleted() => const SizedBox.shrink(),
        TodoDetailLoaded(:final todo) => Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(todo.title, style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 8),
                Text('만든 날짜: ${todo.createdAt.toLocal()}'),
                const SizedBox(height: 24),
                Row(
                  children: [
                    FilledButton.tonal(
                      onPressed: notifier.toggle,
                      child: Text(todo.done ? '다시 열기' : '완료'),
                    ),
                    const SizedBox(width: 12),
                    OutlinedButton(
                      onPressed: notifier.remove,
                      child: const Text('삭제'),
                    ),
                  ],
                ),
              ],
            ),
          ),
      },
    );
  }
}
