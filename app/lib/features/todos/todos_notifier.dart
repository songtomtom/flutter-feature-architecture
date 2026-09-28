import 'package:flow_todo/features/todos/todos_state.dart';
import 'package:flow_todo/providers/todo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todos_notifier.g.dart';

@riverpod
class TodosNotifier extends _$TodosNotifier {
  @override
  TodosState build() {
    _load();
    return const TodosState.loading();
  }

  Future<void> _load() async {
    try {
      final todos = await ref.read(todoRepositoryProvider).findAll();
      state = TodosState.loaded(todos);
    } catch (e) {
      state = TodosState.error(e.toString());
    }
  }

  Future<void> add(String title) async {
    final trimmed = title.trim();
    if (trimmed.isEmpty) return;
    await ref.read(todoRepositoryProvider).create(trimmed);
    await _load();
  }

  Future<void> toggle(String id) async {
    await ref.read(todoRepositoryProvider).toggle(id);
    await _load();
  }

  Future<void> remove(String id) async {
    await ref.read(todoRepositoryProvider).delete(id);
    await _load();
  }
}
