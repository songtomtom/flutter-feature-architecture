import 'package:flow_todo/features/todos/todo.dart';
import 'package:flow_todo/providers/todo_repository.dart';

// 저장소 대신 메모리에 두는 가짜. 인터페이스만 구현하므로 SharedPreferences 가 필요 없다.
class FakeTodoRepository implements TodoRepository {
  FakeTodoRepository([List<Todo>? seed]) : _todos = [...?seed];

  final List<Todo> _todos;
  int _seq = 0;

  @override
  Future<List<Todo>> findAll() async => List.unmodifiable(_todos);

  @override
  Future<Todo?> findById(String id) async {
    for (final t in _todos) {
      if (t.id == id) return t;
    }
    return null;
  }

  @override
  Future<Todo> create(String title) async {
    final todo = Todo(
      id: 'todo-${_seq++}',
      title: title,
      createdAt: DateTime(2026, 1, 1),
    );
    _todos.add(todo);
    return todo;
  }

  @override
  Future<Todo> toggle(String id) async {
    final i = _todos.indexWhere((t) => t.id == id);
    _todos[i] = _todos[i].copyWith(done: !_todos[i].done);
    return _todos[i];
  }

  @override
  Future<void> delete(String id) async {
    _todos.removeWhere((t) => t.id == id);
  }
}
