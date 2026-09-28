import 'dart:convert';

import 'package:flow_todo/features/todos/todo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'todo_repository.g.dart';

// 화면과 Notifier 는 이 인터페이스만 본다. 테스트는 메모리 구현을, 앱은 SharedPreferences 구현을 끼운다.
abstract interface class TodoRepository {
  Future<List<Todo>> findAll();
  Future<Todo?> findById(String id);
  Future<Todo> create(String title);
  Future<Todo> toggle(String id);
  Future<void> delete(String id);
}

// 예제라서 SharedPreferences 에 JSON 으로 통째로 저장한다. 저장 방식이 바뀌어도 이 클래스 밖은 모른다.
class SharedPreferencesTodoRepository implements TodoRepository {
  SharedPreferencesTodoRepository(this._prefs);

  static const _key = 'todos';
  final SharedPreferencesAsync _prefs;

  @override
  Future<List<Todo>> findAll() async {
    final raw = await _prefs.getString(_key);
    if (raw == null) return const [];
    final list = jsonDecode(raw) as List<dynamic>;
    return list
        .map((e) => Todo.fromJson(e as Map<String, dynamic>))
        .toList(growable: false);
  }

  @override
  Future<Todo?> findById(String id) async {
    final todos = await findAll();
    for (final todo in todos) {
      if (todo.id == id) return todo;
    }
    return null;
  }

  @override
  Future<Todo> create(String title) async {
    final todos = await findAll();
    final todo = Todo(
      id: DateTime.now().microsecondsSinceEpoch.toString(),
      title: title,
      createdAt: DateTime.now(),
    );
    await _saveAll([...todos, todo]);
    return todo;
  }

  @override
  Future<Todo> toggle(String id) async {
    final todos = await findAll();
    late Todo toggled;
    final next = [
      for (final todo in todos)
        if (todo.id == id) toggled = todo.copyWith(done: !todo.done) else todo,
    ];
    await _saveAll(next);
    return toggled;
  }

  @override
  Future<void> delete(String id) async {
    final todos = await findAll();
    await _saveAll([
      for (final todo in todos)
        if (todo.id != id) todo,
    ]);
  }

  Future<void> _saveAll(List<Todo> todos) =>
      _prefs.setString(_key, jsonEncode(todos.map((t) => t.toJson()).toList()));
}

@Riverpod(keepAlive: true)
TodoRepository todoRepository(Ref ref) =>
    SharedPreferencesTodoRepository(SharedPreferencesAsync());
