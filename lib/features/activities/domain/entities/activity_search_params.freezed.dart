// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_search_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivitySearchParams {
  String? get keyword => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;

  /// Create a copy of ActivitySearchParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivitySearchParamsCopyWith<ActivitySearchParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitySearchParamsCopyWith<$Res> {
  factory $ActivitySearchParamsCopyWith(ActivitySearchParams value,
          $Res Function(ActivitySearchParams) then) =
      _$ActivitySearchParamsCopyWithImpl<$Res, ActivitySearchParams>;
  @useResult
  $Res call({String? keyword, List<String> categories});
}

/// @nodoc
class _$ActivitySearchParamsCopyWithImpl<$Res,
        $Val extends ActivitySearchParams>
    implements $ActivitySearchParamsCopyWith<$Res> {
  _$ActivitySearchParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivitySearchParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = freezed,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivitySearchParamsImplCopyWith<$Res>
    implements $ActivitySearchParamsCopyWith<$Res> {
  factory _$$ActivitySearchParamsImplCopyWith(_$ActivitySearchParamsImpl value,
          $Res Function(_$ActivitySearchParamsImpl) then) =
      __$$ActivitySearchParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? keyword, List<String> categories});
}

/// @nodoc
class __$$ActivitySearchParamsImplCopyWithImpl<$Res>
    extends _$ActivitySearchParamsCopyWithImpl<$Res, _$ActivitySearchParamsImpl>
    implements _$$ActivitySearchParamsImplCopyWith<$Res> {
  __$$ActivitySearchParamsImplCopyWithImpl(_$ActivitySearchParamsImpl _value,
      $Res Function(_$ActivitySearchParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivitySearchParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = freezed,
    Object? categories = null,
  }) {
    return _then(_$ActivitySearchParamsImpl(
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ActivitySearchParamsImpl implements _ActivitySearchParams {
  const _$ActivitySearchParamsImpl(
      {this.keyword = null, final List<String> categories = const []})
      : _categories = categories;

  @override
  @JsonKey()
  final String? keyword;
  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'ActivitySearchParams(keyword: $keyword, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivitySearchParamsImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, keyword, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of ActivitySearchParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivitySearchParamsImplCopyWith<_$ActivitySearchParamsImpl>
      get copyWith =>
          __$$ActivitySearchParamsImplCopyWithImpl<_$ActivitySearchParamsImpl>(
              this, _$identity);
}

abstract class _ActivitySearchParams implements ActivitySearchParams {
  const factory _ActivitySearchParams(
      {final String? keyword,
      final List<String> categories}) = _$ActivitySearchParamsImpl;

  @override
  String? get keyword;
  @override
  List<String> get categories;

  /// Create a copy of ActivitySearchParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivitySearchParamsImplCopyWith<_$ActivitySearchParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
