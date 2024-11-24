import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_search_params.freezed.dart';

@freezed
class ActivitySearchParams with _$ActivitySearchParams {
  const factory ActivitySearchParams({
    @Default(null) String? keyword,
    @Default([]) List<String> categories,
  }) = _ActivitySearchParams;
}
