import 'package:flow_todo/features/todos/todo.dart';
import 'package:flow_todo/features/todos/todos_screen.dart';
import 'package:flow_todo/providers/todo_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../providers/fake_todo_repository.dart';

void main() {
  Widget wrap(TodoRepository repo) => ProviderScope(
        overrides: [todoRepositoryProvider.overrideWithValue(repo)],
        child: const MaterialApp(home: TodosScreen()),
      );

  testWidgets('비어 있으면 안내 문구를 보여 준다', (tester) async {
    await tester.pumpWidget(wrap(FakeTodoRepository()));
    await tester.pump();
    expect(find.textContaining('할 일이 없습니다'), findsOneWidget);
  });

  testWidgets('저장소의 항목을 목록으로 그린다', (tester) async {
    final repo = FakeTodoRepository([
      Todo(id: 'a', title: '책 읽기', createdAt: DateTime(2026)),
      Todo(id: 'b', title: '산책', done: true, createdAt: DateTime(2026)),
    ]);
    await tester.pumpWidget(wrap(repo));
    await tester.pump();

    expect(find.text('책 읽기'), findsOneWidget);
    expect(find.text('산책'), findsOneWidget);
    expect(find.byType(Checkbox), findsNWidgets(2));
  });
}
