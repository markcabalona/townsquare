import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:townsquare/core/router/app_router.dart';
import 'package:townsquare/core/router/routes/app_routes.dart';

void initializeRouter() {
  GetIt.instance.registerLazySingleton(
    () => AppRouter(
      router: GoRouter(
        initialLocation: AppRoute.initial.path,
        routes: [
          GoRoute(
            name: AppRoute.initial.name,
            path: AppRoute.initial.path,
            builder: (context, state) => const Placeholder(),
          ),
        ],
      ),
    ),
  );
}
