# riverpod_scaffold

A modular, scalable Flutter project foundation with Riverpod state management and a robust API architecture.

## Features

- **Modular Architecture**: Feature-first structure for scalability and maintainability.
- **Riverpod Integration**: State management using Riverpod providers.
- **Reusable API Layer**: Generic API service using Dio for HTTP networking.
- **Unified API Result Model**: Consistent handling of loading, success, and error states.
- **Centralized Error Handling**: Standardized network exception management.
- **Ready for Git Flow**: Supports `main` and `develop` branches for collaborative development.

## Project Structure

```
lib/
├── models/
│   └── api_result/api_result.dart         # API result model (success, error, loading)
├── providers/
│   └── api_provider/api_provider.dart     # Riverpod providers for API and Dio
├── services/
│   └── api_service/api_service.dart       # Generic API service (Dio-based)
├── utils/
│   └── network_exceptions/network_exceptions.dart # Network error handling
├── ...                                   # Other features, views, and services
```

## API Layer

- **ApiService**: Handles HTTP requests (GET, POST, etc.) using Dio.
- **ApiResult**: Represents API call states (success, error, loading).
- **NetworkExceptions**: Centralizes error parsing and user-friendly messages.

## State Management

- **Riverpod**: All API logic and dependencies are exposed via Riverpod providers for testability and separation of concerns.

## Getting Started

1. Add dependencies in `pubspec.yaml`:
   ```yaml
   dependencies:
     dio: ^5.4.0
     flutter_riverpod: ^2.4.0
   ```
2. Run `flutter pub get`.
3. Use the provided API service and providers in your features.

## Branching Strategy

- `main`: Stable, production-ready code.
- `develop`: Active development branch. Merge features here before releasing to `main`.

## Author

Pablo Fuertes

## License

MIT
