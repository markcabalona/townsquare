import 'package:flutter/material.dart';
import 'package:townsquare/core/enums/tags.dart';

class TagTitleColorSwatch extends ColorSwatch<Tags> {
  TagTitleColorSwatch(
    Color primary,
    Map<Tags, Color> swatch,
  ) : super(primary.value, swatch);

  /// The lightest shade.
  Color get light => this[Tags.light]!;

  /// The second lightest shade.
  Color get medium => this[Tags.medium]!;

  /// The third lightest shade.
  Color get high => this[Tags.high]!;

  /// The fourth lightest shade.
  Color get veryHigh => this[Tags.veryHigh]!;

  /// The fifth lightest shade.
  Color get workSpace => this[Tags.workSpace]!;

  /// The default shade.
  Color get childCare => this[Tags.childCare]!;

  factory TagTitleColorSwatch.fromMap(Map<Tags, Color> map) {
    return TagTitleColorSwatch(
      map[Tags.light]!,
      map,
    );
  }
}
