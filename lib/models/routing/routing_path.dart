/*
* routing_path.dart
* --------------------------
* Purpose: Defines the RoutingPath model for managing and referencing app routes in a type-safe way.
* Author: Pablo Fuertes
* Usage: Use this model to define and reference named routes throughout the app.
*/

/// RoutingPath
///
/// Represents a named route in the application.
/// Use this model to manage and reference routes in a type-safe manner.
class RoutingPath {
  /// The unique name of the route.
  final String name;

  /// The path string used by GoRouter.
  final String path;

  /// Creates a [RoutingPath] with the given [name] and [path].
  const RoutingPath({
    required this.name,
    required this.path,
  });
}

/// Example usage:
/// ```dart
/// const homeRoute = RoutingPath(name: 'home', path: '/');