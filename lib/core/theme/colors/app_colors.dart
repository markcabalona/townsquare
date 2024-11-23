import 'package:flutter/material.dart';
import 'package:townsquare/core/theme/colors/app_color_swatch.dart';

abstract class AppColors {
  AppColorSwatch get primary;
  AppColorSwatch get neutral;
  Color get black;
  Color get white;
  AppColorSwatch get secondary;
  AppColorSwatch get tertiary;
  Color get tagLight;
  Color get tagMedium;
  Color get tagHigh;
  Color get tagVeryHigh;
  Color get tagVeryWorkSpace;
  Color get tagVeryWorkChildCare;
}
