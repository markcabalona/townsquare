import 'package:flutter/material.dart';
import 'package:townsquare/core/enums/platforms.dart';
import 'package:townsquare/core/theme/app_theme.dart';
import 'package:townsquare/core/theme/colors/app_colors_light.dart';
import 'package:townsquare/core/theme/text_styles/app_text_styles.dart';
import 'package:townsquare/core/theme/text_styles/app_text_styles_sf_pro_display.dart';
import 'package:townsquare/core/theme/text_styles/app_text_styles_sf_pro_display_desktop.dart';

class AppThemeWidget extends StatelessWidget {
  const AppThemeWidget({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final platform = Platforms.fromWidth(constraints.maxWidth);
        final isDesktop = platform == Platforms.web;
        return AppTheme(
          colors: AppColorsLight(),
          textStyles: _getTextStyle(isDesktop),
          platform: platform,
          child: child,
        );
      },
    );
  }

  AppTextStyles _getTextStyle(bool isDesktop) {
    return isDesktop
        ? AppTextStylesSfProDisplayDesktop()
        : AppTextStylesSfProDisplay();
  }
}
