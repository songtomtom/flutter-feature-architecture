import 'package:flow_todo/core/router/app_router.dart';
import 'package:flow_todo/features/todos/todos_notifier.dart';
import 'package:flow_todo/features/todos/todos_state.dart';
import 'package:flow_todo/features/todos/widgets/todo_tile.dart';
import 'package:flow_todo/shared/widgets/empty_view.dart';
import 'package:flow_todo/shared/widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodosScreen extends ConsumerWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todosProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('할 일'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => const SettingsRoute().push<void>(context),
          ),
        ],
      ),
      body: switch (state) {
        TodosLoading() => const Center(child: CircularProgressIndicator()),
        TodosLoaded(:final todos) when todos.isEmpty =>
          const EmptyView(message: '할 일이 없습니다. 아래 + 버튼으로 추가하세요.'),
        TodosLoaded(:final todos) => ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return TodoTile(
                todo: todo,
                onToggle: () =>
                    ref.read(todosProvider.notifier).toggle(todo.id),
                onTap: () => TodoDetailRoute(id: todo.id).push<void>(context),
              );
            },
          ),
        TodosError(:final message) => ErrorView(message: message),
      },
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddDialog(context, ref),
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _showAddDialog(BuildContext context, WidgetRef ref) async {
    final controller = TextEditingController();
    final title = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('새 할 일'),
        content: TextField(
          controller: controller,
          autofocus: true,
          onSubmitted: (v) => Navigator.of(context).pop(v),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('취소'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(controller.text),
            child: const Text('추가'),
          ),
        ],
      ),
    );
    if (title != null) {
      await ref.read(todosProvider.notifier).add(title);
    }
  }
}
