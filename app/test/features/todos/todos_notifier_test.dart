import 'package:flow_todo/features/todos/todos_notifier.dart';
import 'package:flow_todo/features/todos/todos_state.dart';
import 'package:flow_todo/providers/todo_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../providers/fake_todo_repository.dart';

void main() {
  late ProviderContainer container;
  late List<TodosState> states;

  setUp(() {
    container = ProviderContainer(
      overrides: [
        todoRepositoryProvider.overrideWithValue(FakeTodoRepository()),
      ],
    );
    addTearDown(container.dispose);
    // autoDispose 프로바이더는 듣는 곳이 없으면 바로 정리되므로 테스트 동안 붙들어 두고,
    // 지나간 상태를 모두 기록해 전이 순서를 검증한다.
    states = [];
    final sub = container.listen(
      todosProvider,
      (_, next) => states.add(next),
      fireImmediately: true,
    );
    addTearDown(sub.close);
  });

  // build() 가 시작한 비동기 로딩이 끝날 때까지 기다린다.
  Future<void> settle() => Future<void>.delayed(Duration.zero);

  test('처음에는 loading 이고 저장소를 읽으면 loaded 가 된다', () async {
    await settle();
    expect(states, [
      const TodosState.loading(),
      const TodosState.loaded([]),
    ]);
  });

  test('추가하면 목록에 들어가고 빈 제목은 무시한다', () async {
    final notifier = container.read(todosProvider.notifier);
    await notifier.add('  ');
    await notifier.add('우유 사기');

    final state = container.read(todosProvider);
    expect(state, isA<TodosLoaded>());
    expect((state as TodosLoaded).todos.map((t) => t.title), ['우유 사기']);
  });

  test('toggle 은 done 을 뒤집는다', () async {
    final notifier = container.read(todosProvider.notifier);
    await notifier.add('운동');
    final id = (container.read(todosProvider) as TodosLoaded)
        .todos
        .single
        .id;

    await notifier.toggle(id);

    final todo = (container.read(todosProvider) as TodosLoaded)
        .todos
        .single;
    expect(todo.done, isTrue);
  });
}
