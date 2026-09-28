// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoDetailState()';
}


}

/// @nodoc
class $TodoDetailStateCopyWith<$Res>  {
$TodoDetailStateCopyWith(TodoDetailState _, $Res Function(TodoDetailState) __);
}


/// Adds pattern-matching-related methods to [TodoDetailState].
extension TodoDetailStatePatterns on TodoDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TodoDetailLoading value)?  loading,TResult Function( TodoDetailLoaded value)?  loaded,TResult Function( TodoDetailNotFound value)?  notFound,TResult Function( TodoDetailDeleted value)?  deleted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TodoDetailLoading() when loading != null:
return loading(_that);case TodoDetailLoaded() when loaded != null:
return loaded(_that);case TodoDetailNotFound() when notFound != null:
return notFound(_that);case TodoDetailDeleted() when deleted != null:
return deleted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TodoDetailLoading value)  loading,required TResult Function( TodoDetailLoaded value)  loaded,required TResult Function( TodoDetailNotFound value)  notFound,required TResult Function( TodoDetailDeleted value)  deleted,}){
final _that = this;
switch (_that) {
case TodoDetailLoading():
return loading(_that);case TodoDetailLoaded():
return loaded(_that);case TodoDetailNotFound():
return notFound(_that);case TodoDetailDeleted():
return deleted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TodoDetailLoading value)?  loading,TResult? Function( TodoDetailLoaded value)?  loaded,TResult? Function( TodoDetailNotFound value)?  notFound,TResult? Function( TodoDetailDeleted value)?  deleted,}){
final _that = this;
switch (_that) {
case TodoDetailLoading() when loading != null:
return loading(_that);case TodoDetailLoaded() when loaded != null:
return loaded(_that);case TodoDetailNotFound() when notFound != null:
return notFound(_that);case TodoDetailDeleted() when deleted != null:
return deleted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( Todo todo)?  loaded,TResult Function()?  notFound,TResult Function()?  deleted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TodoDetailLoading() when loading != null:
return loading();case TodoDetailLoaded() when loaded != null:
return loaded(_that.todo);case TodoDetailNotFound() when notFound != null:
return notFound();case TodoDetailDeleted() when deleted != null:
return deleted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( Todo todo)  loaded,required TResult Function()  notFound,required TResult Function()  deleted,}) {final _that = this;
switch (_that) {
case TodoDetailLoading():
return loading();case TodoDetailLoaded():
return loaded(_that.todo);case TodoDetailNotFound():
return notFound();case TodoDetailDeleted():
return deleted();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( Todo todo)?  loaded,TResult? Function()?  notFound,TResult? Function()?  deleted,}) {final _that = this;
switch (_that) {
case TodoDetailLoading() when loading != null:
return loading();case TodoDetailLoaded() when loaded != null:
return loaded(_that.todo);case TodoDetailNotFound() when notFound != null:
return notFound();case TodoDetailDeleted() when deleted != null:
return deleted();case _:
  return null;

}
}

}

/// @nodoc


class TodoDetailLoading implements TodoDetailState {
  const TodoDetailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDetailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoDetailState.loading()';
}


}




/// @nodoc


class TodoDetailLoaded implements TodoDetailState {
  const TodoDetailLoaded(this.todo);
  

 final  Todo todo;

/// Create a copy of TodoDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoDetailLoadedCopyWith<TodoDetailLoaded> get copyWith => _$TodoDetailLoadedCopyWithImpl<TodoDetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDetailLoaded&&(identical(other.todo, todo) || other.todo == todo));
}


@override
int get hashCode => Object.hash(runtimeType,todo);

@override
String toString() {
  return 'TodoDetailState.loaded(todo: $todo)';
}


}

/// @nodoc
abstract mixin class $TodoDetailLoadedCopyWith<$Res> implements $TodoDetailStateCopyWith<$Res> {
  factory $TodoDetailLoadedCopyWith(TodoDetailLoaded value, $Res Function(TodoDetailLoaded) _then) = _$TodoDetailLoadedCopyWithImpl;
@useResult
$Res call({
 Todo todo
});


$TodoCopyWith<$Res> get todo;

}
/// @nodoc
class _$TodoDetailLoadedCopyWithImpl<$Res>
    implements $TodoDetailLoadedCopyWith<$Res> {
  _$TodoDetailLoadedCopyWithImpl(this._self, this._then);

  final TodoDetailLoaded _self;
  final $Res Function(TodoDetailLoaded) _then;

/// Create a copy of TodoDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todo = null,}) {
  return _then(TodoDetailLoaded(
null == todo ? _self.todo : todo // ignore: cast_nullable_to_non_nullable
as Todo,
  ));
}

/// Create a copy of TodoDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TodoCopyWith<$Res> get todo {
  
  return $TodoCopyWith<$Res>(_self.todo, (value) {
    return _then(_self.copyWith(todo: value));
  });
}
}

/// @nodoc


class TodoDetailNotFound implements TodoDetailState {
  const TodoDetailNotFound();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDetailNotFound);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoDetailState.notFound()';
}


}




/// @nodoc


class TodoDetailDeleted implements TodoDetailState {
  const TodoDetailDeleted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDetailDeleted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoDetailState.deleted()';
}


}




// dart format on
