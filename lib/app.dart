/*
* app.dart
* --------------------------
* Purpose: Main application widget for the Flutter app, integrating flavor banner and home page.
* Author: Pablo Fuertes
* Usage: Used as the root widget in main.dart. Displays the correct app title and flavor banner.
! Update this file if you change the home page or flavor logic.
*/

import 'package:flutter/foundation.dart'; // For kDebugMode (shows banner in debug)
import 'package:flutter/material.dart'; // Flutter UI framework

import 'flavors.dart'; // Flavor configuration (F.title, F.name)
import 'pages/my_home_page.dart'; // The main home page widget

/// The main application widget.
/// 
/// StatelessWidget because no state is managed here.
/// Shows a banner with the current flavor in debug mode.
class App extends StatelessWidget {
  /// Constructor for [App].
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Builds the MaterialApp with title, theme, and home page wrapped in a flavor banner.
    return MaterialApp(
      title: F.title, // Sets the app title based on the current flavor
      theme: ThemeData(primarySwatch: Colors.blue), // Sets the default theme
      home: _flavorBanner(child: MyHomePage(), show: kDebugMode), // Home page with banner in debug
    );
  }

  /// Adds a banner showing the current flavor in debug mode.
  /// 
  /// [child]: The widget to display under the banner.
  /// [show]: Whether to show the banner (true in debug mode).
  Widget _flavorBanner({required Widget child, bool show = true}) => show
      ? Banner(
          location: BannerLocation.topStart, // Banner position
          message: F.name, // Flavor name
          color: Colors.green.withAlpha(150), // Banner color
          textStyle: TextStyle(
            fontWeight: FontWeight.w700, // Bold text
            fontSize: 12.0, // Text size
            letterSpacing: 1.0, // Letter spacing
          ),
          textDirection: TextDirection.ltr, // Text direction
          child: child, // The wrapped widget
        )
      : Container(child: child); // No banner in release mode
}
