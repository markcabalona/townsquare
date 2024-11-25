import 'package:dartz/dartz.dart';
import 'package:townsquare/core/errors/failures/app_failure.dart';
import 'package:townsquare/features/activities/domain/entities/activity.dart';
import 'package:townsquare/features/activities/domain/entities/activity_search_params.dart';

abstract class ActivitiesRepository {
  Future<Either<AppFailure, List<Activity>>> fetchActivities({
    int offset = 0,
    int limit = 10,
  });
  Future<Either<AppFailure, List<Activity>>> searchActivities({
    required ActivitySearchParams searchParameter,
    int offset = 0,
    int limit = 10,
  });
}
