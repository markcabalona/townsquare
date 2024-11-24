import 'package:townsquare/features/activities/domain/entities/activity.dart';

abstract class ActivitiesDatasource {
  Future<List<Activity>> fetchActivities({
    int offset = 0,
    int limit = 10,
  });
  Future<List<Activity>> searchActivities({
    String? keyword,
    List<String>? categories,
    int offset = 0,
    int limit = 10,
  });
}
