
* documentation.md
* --------------------------
* Purpose: Comprehensive guide for the Flutter Riverpod base app.
* Author: Pablo Fuertes
* Usage: Reference for setup, usage, and best practices.


# Documentation

## Introduction
Purpose of this base application.

## Getting Started
How to clone, set up, and run the project.

### LoggerService

- **Purpose:** Centralized logging utility using `dart:developer` for structured, production-ready logs.
- **Location:** `lib/services/logger_service.dart`
- **Usage:**
  ```dart
  import 'package:riverpod_scaffold/services/logger_service.dart';

  LoggerService.log('App started');
  LoggerService.warn('Low disk space');
  LoggerService.error('Failed to load data', errorObject, stackTrace);
  ```
- **API:**
  - `LoggerService.log(String message)` — Info log
  - `LoggerService.warn(String message)` — Warning log
  - `LoggerService.error(String message, [Object? error, StackTrace? stackTrace])` — Error log with optional error and stack trace
- **Notes:** Avoids `print` for all logging. Integrates with debugging tools for filtering and analysis.
## Core Concepts

### State Management (Riverpod)
- Overview of Riverpod.
- Provider structure: `lib/providers/{provider_name}/{provider_name}_provider.dart`.
- Basic usage examples.

### View Structure
- Explanation of `lib/views/{view_name}/view_name.dart`.
- How to create new views.

### Navigation (GoRouter)
- Setup and basic routing.
- Passing arguments.

### Localization (`flutter_localization`)
- Setup and usage.

## Project Rules
Summary of and/or link to rules in `.roo/rules/`.

## How to Add a New Feature/View
Step-by-step guide.

## Diagrams
- High-level application flow.
- Example of Provider-View interaction.