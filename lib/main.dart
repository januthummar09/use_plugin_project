import 'package:flutter/material.dart';

import 'circular_percentage_indicator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CircularPercentageIndicatorScreen(),
      // home: const SwipeScreen(),
    );
  }
}
