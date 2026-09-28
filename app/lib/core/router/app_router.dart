import 'package:flow_todo/features/settings/settings_screen.dart';
import 'package:flow_todo/features/todo_detail/todo_detail_screen.dart';
import 'package:flow_todo/features/todos/todos_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_router.g.dart';

final appRouter = GoRouter(routes: $appRoutes);

@TypedGoRoute<TodosRoute>(
  path: '/',
  routes: [
    TypedGoRoute<TodoDetailRoute>(path: 'todo/:id'),
    TypedGoRoute<SettingsRoute>(path: 'settings'),
  ],
)
class TodosRoute extends GoRouteData with _$TodosRoute {
  const TodosRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const TodosScreen();
}

class TodoDetailRoute extends GoRouteData with _$TodoDetailRoute {
  const TodoDetailRoute({required this.id});

  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      TodoDetailScreen(id: id);
}

class SettingsRoute extends GoRouteData with _$SettingsRoute {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsScreen();
}
