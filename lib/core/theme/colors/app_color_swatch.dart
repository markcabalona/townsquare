import 'package:flutter/material.dart';

class AppColorSwatch extends ColorSwatch<int> {
  AppColorSwatch(
    Color primary,
    Map<int, Color> swatch,
  ) : super(primary.value, swatch);

  /// The lightest shade.
  Color get shade100 => this[10]!;

  /// The second lightest shade.
  Color get shade200 => this[200]!;

  /// The third lightest shade.
  Color get shade300 => this[300]!;

  /// The fourth lightest shade.
  Color get shade400 => this[400]!;

  /// The fifth lightest shade.
  Color get shade500 => this[500]!;

  /// The default shade.
  Color get shade600 => this[600]!;
}
