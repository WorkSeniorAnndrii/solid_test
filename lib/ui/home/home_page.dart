import 'dart:math';
import 'package:flutter/material.dart';

/// Displays the main screen [HomePage] with a tap-to-change-color feature.
class HomePage extends StatefulWidget {
  /// Initializes the widget with an optional key.
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

/// Manages the state of the HomePage widget.
class HomePageState extends State<HomePage> {
  Color _backgroundColor = Colors.white;
  static const int _maxColorValue = 0xFFFFFF;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = Color(
        (Random().nextDouble() * _maxColorValue).toInt(),
      ).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
