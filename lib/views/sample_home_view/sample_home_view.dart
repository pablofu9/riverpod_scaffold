/*
* sample_home_view.dart
* --------------------------
* Purpose: Example view demonstrating the base structure for all views in the app.
* Author: Pablo Fuertes
* Usage: Serves as a template for creating new views. Place all view-specific code here.
*/

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// SampleHomeView
///
/// A basic example view that demonstrates how to use a ConsumerWidget
/// and interact with Riverpod providers.
///
/// This widget should be used as a template for creating new views.
class SampleHomeView extends ConsumerWidget {
  /// Creates a [SampleHomeView].
  const SampleHomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Home View'),
      ),
      body: const Center(
        child: Text('Welcome to the Sample Home View!'),
      ),
    );
  }
}