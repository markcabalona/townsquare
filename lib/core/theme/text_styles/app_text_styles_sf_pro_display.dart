import 'package:flutter/material.dart';
import 'package:townsquare/core/extensions/text_style_ext.dart';
import 'package:townsquare/core/theme/text_styles/app_text_styles.dart';

class AppTextStylesSfProDisplay implements AppTextStyles {
  final TextStyle base = const TextStyle(
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w500,
    letterSpacing: 0.4,
    fontSize: 14,
  ).withLineHeight(28);

  @override
  TextStyle get body1 => base;

  @override
  TextStyle get body2 => base.copyWith(fontSize: 12);

  @override
  TextStyle get body3 => base.copyWith(fontSize: 10);

  @override
  TextStyle get heading1 => base
      .copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        letterSpacing: .75,
      )
      .withLineHeight(72);

  @override
  TextStyle get heading2 => base
      .copyWith(
        fontSize: 20,
      )
      .withLineHeight(64);

  @override
  TextStyle get subtitle1 => base.copyWith(fontSize: 16).withLineHeight(48);

  @override
  TextStyle get subtitle2 => base
      .copyWith(fontSize: 14, fontWeight: FontWeight.w700)
      .withLineHeight(40);
}
