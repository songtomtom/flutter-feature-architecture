import 'package:flow_todo/features/todo_detail/todo_detail_state.dart';
import 'package:flow_todo/features/todos/todos_notifier.dart';
import 'package:flow_todo/providers/todo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_detail_notifier.g.dart';

@riverpod
class TodoDetailNotifier extends _$TodoDetailNotifier {
  @override
  TodoDetailState build(String id) {
    _load();
    return const TodoDetailState.loading();
  }

  Future<void> _load() async {
    final todo = await ref.read(todoRepositoryProvider).findById(id);
    state = todo == null
        ? const TodoDetailState.notFound()
        : TodoDetailState.loaded(todo);
  }

  Future<void> toggle() async {
    final todo = await ref.read(todoRepositoryProvider).toggle(id);
    state = TodoDetailState.loaded(todo);
    // 목록 화면이 같은 저장소를 보므로 목록도 다시 읽게 한다.
    ref.invalidate(todosProvider);
  }

  Future<void> remove() async {
    await ref.read(todoRepositoryProvider).delete(id);
    state = const TodoDetailState.deleted();
    ref.invalidate(todosProvider);
  }
}
