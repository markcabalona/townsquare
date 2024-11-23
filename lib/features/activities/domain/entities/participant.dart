import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant.freezed.dart';

@freezed
class Participant with _$Participant {
  factory Participant({
    required String id,
    required String name,
  }) = _Participant;
}
