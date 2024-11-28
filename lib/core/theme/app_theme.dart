import 'package:flutter/material.dart';
import 'package:townsquare/core/enums/platforms.dart';
import 'package:townsquare/core/theme/colors/app_colors.dart';
import 'package:townsquare/core/theme/text_styles/app_text_styles.dart';

class AppTheme extends InheritedWidget {
  final AppColors colors;
  final AppTextStyles textStyles;
  final Platforms platform;

  const AppTheme({
    super.key,
    required this.colors,
    required this.textStyles,
    required this.platform,
    required super.child,
  });

  static AppTheme of(BuildContext context) {
    final instance = context.dependOnInheritedWidgetOfExactType<AppTheme>();
    if (instance != null) return instance;
    throw Exception('Could not find AppTheme in context.');
  }

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) {
    return oldWidget.colors.runtimeType != colors.runtimeType ||
        oldWidget.textStyles.runtimeType != textStyles.runtimeType ||
        platform != oldWidget.platform;
  }
}
