import 'package:flutter/material.dart';
import 'package:townsquare/core/dependencies/dependencies.dart';
import 'package:townsquare/townsquare_app.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const TownSquareApp());
}
