// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_detail_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TodoDetailNotifier)
const todoDetailProvider = TodoDetailNotifierFamily._();

final class TodoDetailNotifierProvider
    extends $NotifierProvider<TodoDetailNotifier, TodoDetailState> {
  const TodoDetailNotifierProvider._({
    required TodoDetailNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'todoDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$todoDetailNotifierHash();

  @override
  String toString() {
    return r'todoDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  TodoDetailNotifier create() => TodoDetailNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TodoDetailState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TodoDetailState>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is TodoDetailNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$todoDetailNotifierHash() =>
    r'fa8455e39797ae03fe587fe945c4fbafbcee15df';

final class TodoDetailNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          TodoDetailNotifier,
          TodoDetailState,
          TodoDetailState,
          TodoDetailState,
          String
        > {
  const TodoDetailNotifierFamily._()
    : super(
        retry: null,
        name: r'todoDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TodoDetailNotifierProvider call(String id) =>
      TodoDetailNotifierProvider._(argument: id, from: this);

  @override
  String toString() => r'todoDetailProvider';
}

abstract class _$TodoDetailNotifier extends $Notifier<TodoDetailState> {
  late final _$args = ref.$arg as String;
  String get id => _$args;

  TodoDetailState build(String id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<TodoDetailState, TodoDetailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TodoDetailState, TodoDetailState>,
              TodoDetailState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
