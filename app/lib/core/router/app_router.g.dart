// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$todosRoute];

RouteBase get $todosRoute => GoRouteData.$route(
  path: '/',
  factory: _$TodosRoute._fromState,
  routes: [
    GoRouteData.$route(path: 'todo/:id', factory: _$TodoDetailRoute._fromState),
    GoRouteData.$route(path: 'settings', factory: _$SettingsRoute._fromState),
  ],
);

mixin _$TodosRoute on GoRouteData {
  static TodosRoute _fromState(GoRouterState state) => const TodosRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$TodoDetailRoute on GoRouteData {
  static TodoDetailRoute _fromState(GoRouterState state) =>
      TodoDetailRoute(id: state.pathParameters['id']!);

  TodoDetailRoute get _self => this as TodoDetailRoute;

  @override
  String get location =>
      GoRouteData.$location('/todo/${Uri.encodeComponent(_self.id)}');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  @override
  String get location => GoRouteData.$location('/settings');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
