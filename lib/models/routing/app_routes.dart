/*
* app_routes.dart
* --------------------------
* Purpose: Centralizes all app route definitions using the RoutingPath model.
* Author: Pablo Fuertes
* Usage: Import this file wherever you need to reference or manage app routes.
*/

import 'routing_path.dart';

/// AppRoutes
///
/// Contains all named routes for the application as static constants.
class AppRoutes {
  static const home = RoutingPath(name: 'home', path: '/');
  // Add more static routes here as needed.
}