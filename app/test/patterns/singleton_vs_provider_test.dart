// 4편 "금지 패턴" 의 근거. 싱글턴은 테스트 사이에 상태가 새고, Riverpod 컨테이너는 격리된다.
import 'package:flow_todo/features/todos/todos_notifier.dart';
import 'package:flow_todo/features/todos/todos_state.dart';
import 'package:flow_todo/providers/todo_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../providers/fake_todo_repository.dart';

// 흔히 보는 싱글턴 저장소. 프로세스에 하나뿐이라 누가 먼저 썼는지에 따라 결과가 달라진다.
class SingletonTodoStore {
  SingletonTodoStore._();
  static final instance = SingletonTodoStore._();

  final titles = <String>[];
  void add(String title) => titles.add(title);
}

void main() {
  group('싱글턴은 테스트 순서에 따라 결과가 달라진다', () {
    test('A: 하나 추가하면 하나', () {
      SingletonTodoStore.instance.add('첫 번째');
      expect(SingletonTodoStore.instance.titles.length, 1);
    });

    test('B: 하나 추가하면 하나여야 하는데 A 가 남긴 것이 보인다', () {
      SingletonTodoStore.instance.add('두 번째');
      // 실제 값은 2. 이 테스트만 단독 실행하면 1 이라 통과한다.
      expect(SingletonTodoStore.instance.titles.length, 2);
    });
  });

  group('Riverpod 컨테이너는 테스트마다 새로 만든다', () {
    ProviderContainer makeContainer() {
      final container = ProviderContainer(
        overrides: [
          todoRepositoryProvider.overrideWithValue(FakeTodoRepository()),
        ],
      );
      addTearDown(container.dispose);
      addTearDown(container.listen(todosProvider, (_, _) {}).close);
      return container;
    }

    test('A: 하나 추가하면 하나', () async {
      final container = makeContainer();
      await container.read(todosProvider.notifier).add('첫 번째');
      expect((container.read(todosProvider) as TodosLoaded).todos.length, 1);
    });

    test('B: A 와 무관하게 하나', () async {
      final container = makeContainer();
      await container.read(todosProvider.notifier).add('두 번째');
      expect((container.read(todosProvider) as TodosLoaded).todos.length, 1);
    });
  });
}
