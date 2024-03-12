import 'package:flutter/material.dart';
import 'package:solid_test/ui/home/home_page.dart';

/// The [SolidApp] class that builds the main application.
/// This stateless widget is application root and responsive
/// for displaying [HomePage].
class SolidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
