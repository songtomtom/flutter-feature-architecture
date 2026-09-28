import 'package:flow_todo/features/todos/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_detail_state.freezed.dart';

@freezed
sealed class TodoDetailState with _$TodoDetailState {
  const factory TodoDetailState.loading() = TodoDetailLoading;
  const factory TodoDetailState.loaded(Todo todo) = TodoDetailLoaded;
  const factory TodoDetailState.notFound() = TodoDetailNotFound;
  const factory TodoDetailState.deleted() = TodoDetailDeleted;
}
