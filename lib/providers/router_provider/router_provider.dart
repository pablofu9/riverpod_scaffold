/*
* router_provider.dart
* --------------------------
* Purpose: Provides the GoRouter instance for app-wide navigation management using Riverpod.
* Author: Pablo Fuertes
* Usage: Use this provider to access and manage routing logic reactively throughout the app.
*/

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../views/sample_home_view/sample_home_view.dart';
import '../../models/routing/app_routes.dart';

/// A [Provider] that exposes the [GoRouter] instance for the application.
///
/// This allows navigation logic to be managed and accessed reactively
/// via Riverpod, enabling features like authentication guards, deep linking,
/// and navigation state listening.
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.home.path,
        name: AppRoutes.home.name,
        builder: (context, state) => const SampleHomeView(),
      ),
      // Add more routes here using AppRoutes.
    ],
    // Optionally, add redirect logic or observers here.
  );
});