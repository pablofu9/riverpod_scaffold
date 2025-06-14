/*
* logger_service.dart
* --------------------------
* Purpose: Provides a centralized logging utility for the application.
* Author: Pablo Fuertes
* Usage: Import and use LoggerService for consistent logging across the app.
*/

import 'dart:developer' as developer;


/// LoggerService
///
/// Centralized service for logging messages, warnings, and errors.
/// Use this service to ensure all logs are formatted and managed consistently.
class LoggerService {
  /// Logs a general info message.
  static void log(String message) {
    developer.log(message, name: 'INFO');
  }

  /// Logs a warning message.
  static void warn(String message) {
    developer.log(message, name: 'WARNING', level: 900);
  }

  /// Logs an error message.
  static void error(String message, [Object? error, StackTrace? stackTrace]) {
    developer.log(
      message,
      name: 'ERROR',
      error: error,
      stackTrace: stackTrace,
      level: 1000,
    );
  }
}