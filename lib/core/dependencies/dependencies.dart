import 'package:townsquare/core/dependencies/activities/activities.dart';
import 'package:townsquare/core/dependencies/router/router.dart';

Future<void> initializeDependencies() async {
  initializeRouter();
  initializeActivities();
}
