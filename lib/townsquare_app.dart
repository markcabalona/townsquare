import 'package:flutter/material.dart';

class TownSquareApp extends StatelessWidget {
  const TownSquareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TWNSQR',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Placeholder(),
    );
  }
}
