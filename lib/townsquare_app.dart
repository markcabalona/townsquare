import 'package:flutter/material.dart';
import 'package:townsquare/core/theme/app_theme.dart';
import 'package:townsquare/core/theme/app_theme_widget.dart';

class TownSquareApp extends StatelessWidget {
  const TownSquareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppThemeWidget(
      child: Builder(builder: (context) {
        final appTheme = AppTheme.of(context);
        return MaterialApp(
          title: 'TWNSQR',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: appTheme.colors.primary,
            ),
            textTheme: TextTheme(
              bodyMedium: appTheme.textStyles.body1,
            ),
          ),
          home: const Placeholder(),
        );
      }),
    );
  }
}
