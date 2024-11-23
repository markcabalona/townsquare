import 'package:flutter/material.dart';
import 'package:townsquare/core/theme/colors/app_color_swatch.dart';
import 'package:townsquare/core/theme/colors/tags_color_swatch.dart';
import 'package:townsquare/core/theme/colors/tags_title_color_swatch.dart';

abstract class AppColors {
  AppColorSwatch get primary;
  AppColorSwatch get neutral;
  Color get black;
  Color get white;
  AppColorSwatch get secondary;
  AppColorSwatch get tertiary;
  TagColorSwatch get tags;
  TagTitleColorSwatch get tagsTitle;
}
