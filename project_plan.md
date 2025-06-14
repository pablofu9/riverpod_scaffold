# Flutter Riverpod Base Application Plan

**Phase 1: Core Setup & Initial Structure**

1.  **Integrate Riverpod into `main.dart`**:
    *   Import `flutter_riverpod`.
    *   Wrap the root widget (`MainApp`) with `ProviderScope` in the `main()` function.
2.  **Create Documentation Structure**:
    *   Create a `documentation/` directory.
    *   Create an empty `documentation/documentation.md` file.
    *   Create an `architecture/` directory.
    *   Create an empty `architecture/architecture.md` file.
3.  **Establish Basic Project Directories (as per rules)**:
    *   Create `lib/views/` directory.
    *   Create `lib/providers/` directory.

**Phase 2: Define Documentation Content Structure**

1.  **`documentation/documentation.md` - Proposed Structure**:
    *   **Introduction**: Purpose of this base application.
    *   **Getting Started**: How to clone, set up, and run the project.
    *   **Core Concepts**:
        *   State Management (Riverpod):
            *   Overview of Riverpod.
            *   How providers are structured: `lib/providers/{provider_name}/{provider_name}_provider.dart`.
            *   Basic usage examples (reading, watching providers).
        *   View Structure:
            *   Explanation of `lib/views/{view_name}/view_name.dart`.
            *   How to create new views.
        *   Navigation (GoRouter):
            *   Setup and basic routing.
            *   Passing arguments.
        *   Localization (`flutter_localization`):
            *   Setup and usage.
    *   **Project Rules**:
        *   Summary of and/or link to rules in `.roo/rules/`.
    *   **How to Add a New Feature/View**: Step-by-step guide.
    *   **Diagrams**:
        *   High-level application flow.
        *   Example of Provider-View interaction.
2.  **`architecture/architecture.md` - Proposed Structure**:
    *   **Overview**: Architectural goals (e.g., scalability, maintainability, testability).
    *   **Architectural Pattern**:
        *   Description of the chosen pattern (e.g., a variation of MVVM, Clean Architecture adapted for Flutter/Riverpod).
        *   Diagram illustrating layers and data flow.
    *   **Directory Structure**:
        *   Detailed breakdown of `lib/` subdirectories (`views`, `providers`, `widgets`, `models`, `services`, `utils`, etc.) and their responsibilities.
        *   Explanation of `documentation/` and `architecture/` folders.
    *   **State Management (Riverpod Deep Dive)**:
        *   Rationale for choosing Riverpod.
        *   Guidance on when to use different types of providers (`Provider`, `FutureProvider`, `StreamProvider`, `StateNotifierProvider`, `AsyncNotifierProvider`, etc.).
        *   Best practices for provider organization and dependency injection.
    *   **Navigation (GoRouter Deep Dive)**:
        *   Configuration details.
        *   Named routes.
        *   Route guards.
    *   **Error Handling Strategy**: Application-wide approach.
    *   **Testing Strategy**: Unit, widget, and integration tests.
    *   **Code Style and Linting**: Reference to `analysis_options.yaml` and `flutter_lints`.
    *   **Key Design Decisions & Trade-offs**: Justification for significant architectural choices.

**Phase 3: Initial Example Implementation (Illustrative)**

1.  **Create an Example View**:
    *   `lib/views/sample_home_view/sample_home_view.dart`
    *   Include required file-level comments and a basic `ConsumerWidget` named `SampleHomeView`.
2.  **Create an Example Provider**:
    *   `lib/providers/theme_mode_provider/theme_mode_provider.dart`
    *   Include required file-level comments.
    *   Implement a simple `StateNotifierProvider` to manage the app's theme (e.g., light/dark mode).
3.  **Update `MainApp` in `lib/main.dart`**:
    *   Consume the `theme_mode_provider` to set the `themeMode` in `MaterialApp`.
    *   Configure `GoRouter` with a basic route to `SampleHomeView`.

**Mermaid Diagram: Planned Initial Structure & Interaction**

```mermaid
graph TD
    subgraph "Application Entry Point"
        A["main.dart (with ProviderScope)"]
    end

    subgraph "Core UI & Routing"
        B["MaterialApp (configured with GoRouter & Theme from Provider)"]
    end

    subgraph "State Management (Riverpod)"
        C["lib/providers/theme_mode_provider/theme_mode_provider.dart\n(Manages ThemeMode)"]
    end

    subgraph "Views (UI Screens)"
        D["lib/views/sample_home_view/sample_home_view.dart\n(Displays UI, consumes ThemeMode)"]
    end

    subgraph "Documentation"
        E["documentation/documentation.md"]
        F["architecture/architecture.md"]
    end

    A --> B;
    B -- consumes theme from --> C;
    B -- routes to --> D;
    D -- consumes/interacts with --> C;

    style A fill:#lightgrey,stroke:#333,stroke-width:2px
    style B fill:#lightblue,stroke:#333,stroke-width:2px
    style C fill:#lightgreen,stroke:#333,stroke-width:2px
    style D fill:#lightyellow,stroke:#333,stroke-width:2px
    style E fill:#whitesmoke,stroke:#333,stroke-width:1px
    style F fill:#whitesmoke,stroke:#333,stroke-width:1px