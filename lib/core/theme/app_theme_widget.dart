import 'package:flutter/material.dart';
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
        final isDesktop = constraints.maxWidth >= 1044;
        return AppTheme(
          colors: AppColorsLight(),
          textStyles: _getTextStyle(isDesktop),
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
