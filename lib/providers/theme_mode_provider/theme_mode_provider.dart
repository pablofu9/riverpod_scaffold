/*
* theme_mode_provider.dart
* --------------------------
* Purpose: Provides app-wide theme mode state management (light/dark/system) using Riverpod.
* Author: Pablo Fuertes
* Usage: Import and use this provider to read or update the app's theme mode.
*/

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ThemeModeNotifier
///
/// A [StateNotifier] that manages the [ThemeMode] for the application.
/// Provides methods to toggle between light, dark, and system themes.
class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  /// Creates a [ThemeModeNotifier] with the initial [ThemeMode.system].
  ThemeModeNotifier() : super(ThemeMode.system);

  /// Sets the theme mode.
  void setThemeMode(ThemeMode mode) => state = mode;

  /// Toggles between light and dark mode.
  void toggleTheme() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}

/// A [StateNotifierProvider] that exposes the [ThemeModeNotifier] and current [ThemeMode].
final themeModeProvider =
    StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) => ThemeModeNotifier(),
);