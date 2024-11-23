import 'package:go_router/go_router.dart';
import 'package:townsquare/core/router/routes/app_routes.dart';
import 'package:townsquare/core/router/routes/base_routes.dart';
import 'package:townsquare/features/activities/presentation/pages/activities_page.dart';

class ActivitiesRoutes implements BaseRoutes {
  @override
  List<RouteBase> get routes => [_activities];

  final RouteBase _activities = GoRoute(
    name: AppRoute.activities.name,
    path: AppRoute.activities.path,
    builder: (context, state) => const ActivitiesPage(),
  );
}
