# Architecture Rules

- The project must follow a modular, feature-first structure.
- Each major concern (views, providers, models, services, etc.) must have its own dedicated directory under `lib/`.
- Shared logic should be placed in `lib/services` or `lib/utils`, not duplicated across features.
- All code must be documented and follow the project's documentation and automation rules.
- File and folder naming must be consistent and descriptive (snake_case for files/folders, PascalCase for classes).
- No business logic should be placed in the UI layer; use providers/services for logic.
- The architecture must support scalability, maintainability, and testability.
