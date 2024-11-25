import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:townsquare/core/router/routes/app_routes.dart';
import 'package:townsquare/core/router/routes/base_routes.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_cubit.dart';
import 'package:townsquare/features/activities/presentation/pages/activities_page.dart';

class ActivitiesRoutes implements BaseRoutes {
  @override
  List<RouteBase> get routes => [
        ShellRoute(
          builder: (context, state, child) => BlocProvider(
            create: (context) => GetIt.instance<ActivitiesCubit>(),
            child: child,
          ),
          routes: [_activities],
        )
      ];

  final RouteBase _activities = GoRoute(
    name: AppRoute.activities.name,
    path: AppRoute.activities.path,
    builder: (context, state) => const ActivitiesPage(),
  );
}
