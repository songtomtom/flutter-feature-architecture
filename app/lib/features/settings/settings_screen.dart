import 'package:flow_todo/features/settings/settings_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(
      settingsProvider.select((s) => s.themeMode),
    );
    final notifier = ref.read(settingsProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('설정')),
      body: RadioGroup<ThemeMode>(
        groupValue: themeMode,
        onChanged: (m) => notifier.setThemeMode(m ?? ThemeMode.system),
        child: ListView(
          children: [
            for (final mode in ThemeMode.values)
              RadioListTile<ThemeMode>(
                title: Text(switch (mode) {
                  ThemeMode.system => '시스템 설정 따르기',
                  ThemeMode.light => '라이트',
                  ThemeMode.dark => '다크',
                }),
                value: mode,
              ),
          ],
        ),
      ),
    );
  }
}
