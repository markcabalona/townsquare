import 'dart:ui';

import 'package:townsquare/core/enums/tags.dart';
import 'package:townsquare/core/theme/colors/app_color_swatch.dart';
import 'package:townsquare/core/theme/colors/app_colors.dart';
import 'package:townsquare/core/theme/colors/tags_color_swatch.dart';
import 'package:townsquare/core/theme/colors/tags_title_color_swatch.dart';

class AppColorsLight implements AppColors {
  @override
  Color get black => const Color(0xff000000);

  @override
  AppColorSwatch get neutral => AppColorSwatch.fromMap(const {
        100: Color(0xff6C757D),
        200: Color(0xffADB5BD),
        300: Color(0xffCED4DA),
        400: Color(0xffDEE2E6),
        500: Color(0xffE9ECEF),
        600: Color(0xffF8F9FA),
      });

  @override
  AppColorSwatch get primary => AppColorSwatch.fromMap(const {
        100: Color(0xff35BAF8),
        200: Color(0xff4FC7FF),
        300: Color(0xff7FD6FF),
        400: Color(0xffA1E1FF),
        500: Color(0xffC1EBFF),
        600: Color(0xffD5F1FF),
      });

  @override
  AppColorSwatch get secondary => AppColorSwatch.fromMap(const {
        100: Color(0xffEBCF30),
        200: Color(0xffF6DB43),
        300: Color(0xffFFE764),
        400: Color(0xffFFF09C),
        500: Color(0xffFBF2C0),
        600: Color(0xffFFF8EB),
      });

  @override
  AppColorSwatch get tertiary => AppColorSwatch.fromMap(const {
        100: Color(0xff7C5D8E),
        200: Color(0xffAC84C3),
        300: Color(0xffBAA1C8),
        400: Color(0xffBAA1C8),
        500: Color(0xffEEE1F5),
        600: Color(0xffFBF4FF),
      });

  @override
  Color get white => const Color(0xffFFFFFF);

  @override
  TagColorSwatch get tags => TagColorSwatch.fromMap(const {
        Tags.light: Color(0xFFD5F1FF),
        Tags.medium: Color(0xFFF3E8FF),
        Tags.high: Color(0xFFFFEAD1),
        Tags.veryHigh: Color(0xFFFFE0E4),
        Tags.workSpace: Color(0xFF989AEA),
        Tags.childCare: Color(0xFFD8F7DF),
      });

  @override
  TagTitleColorSwatch get tagsTitle => TagTitleColorSwatch.fromMap(const {
        Tags.light: Color(0xFF65B5DB),
        Tags.medium: Color(0xFFC9A4F2),
        Tags.high: Color(0xFFDC974F),
        Tags.veryHigh: Color(0xFFD98792),
        Tags.workSpace: Color(0xffFBF4FF),
        Tags.childCare: Color(0xFF8AB58A),
      });
}
