import 'package:flow_todo/features/todos/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todos_state.freezed.dart';

@freezed
sealed class TodosState with _$TodosState {
  const factory TodosState.loading() = TodosLoading;
  const factory TodosState.loaded(List<Todo> todos) = TodosLoaded;
  const factory TodosState.error(String message) = TodosError;
}
