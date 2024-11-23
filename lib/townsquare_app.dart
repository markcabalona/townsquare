import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:townsquare/core/router/app_router.dart';
import 'package:townsquare/core/theme/app_theme.dart';
import 'package:townsquare/core/theme/app_theme_widget.dart';

class TownSquareApp extends StatelessWidget {
  const TownSquareApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppThemeWidget(
      child: Builder(builder: (context) {
        final appTheme = AppTheme.of(context);
        final AppRouter appRouter = GetIt.instance();
        return MaterialApp.router(
          title: 'TWNSQR',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: appTheme.colors.primary,
            ),
            textTheme: TextTheme(
              bodyMedium: appTheme.textStyles.body1,
            ),
          ),
          routeInformationParser: appRouter.routeInformationParser,
          routeInformationProvider: appRouter.routeInformationProvider,
          routerDelegate: appRouter.routerDelegate,
        );
      }),
    );
  }
}
