// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TodosNotifier)
const todosProvider = TodosNotifierProvider._();

final class TodosNotifierProvider
    extends $NotifierProvider<TodosNotifier, TodosState> {
  const TodosNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todosProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todosNotifierHash();

  @$internal
  @override
  TodosNotifier create() => TodosNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TodosState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TodosState>(value),
    );
  }
}

String _$todosNotifierHash() => r'e3cb686b4f92329f1b5a3b9c15995f04f720cba8';

abstract class _$TodosNotifier extends $Notifier<TodosState> {
  TodosState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TodosState, TodosState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TodosState, TodosState>,
              TodosState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
