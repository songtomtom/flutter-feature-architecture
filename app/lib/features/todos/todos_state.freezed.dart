// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodosState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodosState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodosState()';
}


}

/// @nodoc
class $TodosStateCopyWith<$Res>  {
$TodosStateCopyWith(TodosState _, $Res Function(TodosState) __);
}


/// Adds pattern-matching-related methods to [TodosState].
extension TodosStatePatterns on TodosState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TodosLoading value)?  loading,TResult Function( TodosLoaded value)?  loaded,TResult Function( TodosError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TodosLoading() when loading != null:
return loading(_that);case TodosLoaded() when loaded != null:
return loaded(_that);case TodosError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TodosLoading value)  loading,required TResult Function( TodosLoaded value)  loaded,required TResult Function( TodosError value)  error,}){
final _that = this;
switch (_that) {
case TodosLoading():
return loading(_that);case TodosLoaded():
return loaded(_that);case TodosError():
return error(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TodosLoading value)?  loading,TResult? Function( TodosLoaded value)?  loaded,TResult? Function( TodosError value)?  error,}){
final _that = this;
switch (_that) {
case TodosLoading() when loading != null:
return loading(_that);case TodosLoaded() when loaded != null:
return loaded(_that);case TodosError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<Todo> todos)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TodosLoading() when loading != null:
return loading();case TodosLoaded() when loaded != null:
return loaded(_that.todos);case TodosError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<Todo> todos)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case TodosLoading():
return loading();case TodosLoaded():
return loaded(_that.todos);case TodosError():
return error(_that.message);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<Todo> todos)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case TodosLoading() when loading != null:
return loading();case TodosLoaded() when loaded != null:
return loaded(_that.todos);case TodosError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TodosLoading implements TodosState {
  const TodosLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodosLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodosState.loading()';
}


}




/// @nodoc


class TodosLoaded implements TodosState {
  const TodosLoaded(final  List<Todo> todos): _todos = todos;
  

 final  List<Todo> _todos;
 List<Todo> get todos {
  if (_todos is EqualUnmodifiableListView) return _todos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todos);
}


/// Create a copy of TodosState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodosLoadedCopyWith<TodosLoaded> get copyWith => _$TodosLoadedCopyWithImpl<TodosLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodosLoaded&&const DeepCollectionEquality().equals(other._todos, _todos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todos));

@override
String toString() {
  return 'TodosState.loaded(todos: $todos)';
}


}

/// @nodoc
abstract mixin class $TodosLoadedCopyWith<$Res> implements $TodosStateCopyWith<$Res> {
  factory $TodosLoadedCopyWith(TodosLoaded value, $Res Function(TodosLoaded) _then) = _$TodosLoadedCopyWithImpl;
@useResult
$Res call({
 List<Todo> todos
});




}
/// @nodoc
class _$TodosLoadedCopyWithImpl<$Res>
    implements $TodosLoadedCopyWith<$Res> {
  _$TodosLoadedCopyWithImpl(this._self, this._then);

  final TodosLoaded _self;
  final $Res Function(TodosLoaded) _then;

/// Create a copy of TodosState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todos = null,}) {
  return _then(TodosLoaded(
null == todos ? _self._todos : todos // ignore: cast_nullable_to_non_nullable
as List<Todo>,
  ));
}


}

/// @nodoc


class TodosError implements TodosState {
  const TodosError(this.message);
  

 final  String message;

/// Create a copy of TodosState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodosErrorCopyWith<TodosError> get copyWith => _$TodosErrorCopyWithImpl<TodosError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodosError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TodosState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TodosErrorCopyWith<$Res> implements $TodosStateCopyWith<$Res> {
  factory $TodosErrorCopyWith(TodosError value, $Res Function(TodosError) _then) = _$TodosErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TodosErrorCopyWithImpl<$Res>
    implements $TodosErrorCopyWith<$Res> {
  _$TodosErrorCopyWithImpl(this._self, this._then);

  final TodosError _self;
  final $Res Function(TodosError) _then;

/// Create a copy of TodosState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TodosError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
