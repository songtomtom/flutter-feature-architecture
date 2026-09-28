import 'package:flow_todo/core/router/app_router.dart';
import 'package:flow_todo/core/theme/app_theme.dart';
import 'package:flow_todo/features/settings/settings_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlowTodoApp extends ConsumerWidget {
  const FlowTodoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    return MaterialApp.router(
      title: 'Flow Todo',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: settings.themeMode,
      routerConfig: appRouter,
    );
  }
}
