import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:townsquare/core/enums/tags.dart';
import 'package:townsquare/features/activities/domain/entities/location.dart';
import 'package:townsquare/features/activities/domain/entities/participant.dart';

part 'activity.freezed.dart';

@freezed
class Activity with _$Activity {
  const Activity._();

  factory Activity({
    required String id,
    required DateTime startDate,
    required DateTime endDate,
    required String name,
    required Location location,
    required int maxParticipants,
    @Default([]) List<Participant> participants,
    @Default([]) List<Tags> tags,
    @Default([]) List<String> categories,
    @Default(0) double price,
  }) = _Activity;

  Duration get duration {
    return endDate.difference(startDate);
  }
}
