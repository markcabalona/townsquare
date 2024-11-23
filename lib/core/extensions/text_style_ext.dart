import 'package:flutter/material.dart';

extension TextStyleExt on TextStyle {
  TextStyle withLineHeight(double lineHeight) {
    return copyWith(height: lineHeight / (fontSize ?? 14));
  }
}
