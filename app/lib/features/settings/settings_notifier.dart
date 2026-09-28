import 'package:flow_todo/features/settings/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_notifier.g.dart';

@Riverpod(keepAlive: true)
class SettingsNotifier extends _$SettingsNotifier {
  @override
  SettingsState build() => const SettingsState();

  void setThemeMode(ThemeMode mode) {
    state = state.copyWith(themeMode: mode);
  }
}
