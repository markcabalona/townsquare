import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:townsquare/features/activities/domain/entities/activity.dart';
import 'package:townsquare/features/activities/domain/entities/activity_search_params.dart';

part 'activities_state.freezed.dart';

@freezed
class ActivitiesState with _$ActivitiesState {
  const factory ActivitiesState({
    @Default(true) bool isInitialLoad,
    @Default(true) bool isLoading,
    @Default([]) List<Activity> activities,
    @Default([
      'Sports',
      'Food',
      'Kids',
      'Creative',
      'Popular',
      'Calm',
    ])
    List<String> categories,
    @Default(ActivitySearchParams()) ActivitySearchParams searchParams,
  }) = _ActivitiesState;
}
