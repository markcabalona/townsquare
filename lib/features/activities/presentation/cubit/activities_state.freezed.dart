// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivitiesState {
  bool get isInitialLoad => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  ActivitySearchParams get searchParams => throw _privateConstructorUsedError;

  /// Create a copy of ActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivitiesStateCopyWith<ActivitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitiesStateCopyWith<$Res> {
  factory $ActivitiesStateCopyWith(
          ActivitiesState value, $Res Function(ActivitiesState) then) =
      _$ActivitiesStateCopyWithImpl<$Res, ActivitiesState>;
  @useResult
  $Res call(
      {bool isInitialLoad,
      bool isLoading,
      bool isSearching,
      List<Activity> activities,
      List<String> categories,
      ActivitySearchParams searchParams});

  $ActivitySearchParamsCopyWith<$Res> get searchParams;
}

/// @nodoc
class _$ActivitiesStateCopyWithImpl<$Res, $Val extends ActivitiesState>
    implements $ActivitiesStateCopyWith<$Res> {
  _$ActivitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialLoad = null,
    Object? isLoading = null,
    Object? isSearching = null,
    Object? activities = null,
    Object? categories = null,
    Object? searchParams = null,
  }) {
    return _then(_value.copyWith(
      isInitialLoad: null == isInitialLoad
          ? _value.isInitialLoad
          : isInitialLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchParams: null == searchParams
          ? _value.searchParams
          : searchParams // ignore: cast_nullable_to_non_nullable
              as ActivitySearchParams,
    ) as $Val);
  }

  /// Create a copy of ActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivitySearchParamsCopyWith<$Res> get searchParams {
    return $ActivitySearchParamsCopyWith<$Res>(_value.searchParams, (value) {
      return _then(_value.copyWith(searchParams: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivitiesStateImplCopyWith<$Res>
    implements $ActivitiesStateCopyWith<$Res> {
  factory _$$ActivitiesStateImplCopyWith(_$ActivitiesStateImpl value,
          $Res Function(_$ActivitiesStateImpl) then) =
      __$$ActivitiesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isInitialLoad,
      bool isLoading,
      bool isSearching,
      List<Activity> activities,
      List<String> categories,
      ActivitySearchParams searchParams});

  @override
  $ActivitySearchParamsCopyWith<$Res> get searchParams;
}

/// @nodoc
class __$$ActivitiesStateImplCopyWithImpl<$Res>
    extends _$ActivitiesStateCopyWithImpl<$Res, _$ActivitiesStateImpl>
    implements _$$ActivitiesStateImplCopyWith<$Res> {
  __$$ActivitiesStateImplCopyWithImpl(
      _$ActivitiesStateImpl _value, $Res Function(_$ActivitiesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInitialLoad = null,
    Object? isLoading = null,
    Object? isSearching = null,
    Object? activities = null,
    Object? categories = null,
    Object? searchParams = null,
  }) {
    return _then(_$ActivitiesStateImpl(
      isInitialLoad: null == isInitialLoad
          ? _value.isInitialLoad
          : isInitialLoad // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchParams: null == searchParams
          ? _value.searchParams
          : searchParams // ignore: cast_nullable_to_non_nullable
              as ActivitySearchParams,
    ));
  }
}

/// @nodoc

class _$ActivitiesStateImpl implements _ActivitiesState {
  const _$ActivitiesStateImpl(
      {this.isInitialLoad = true,
      this.isLoading = true,
      this.isSearching = false,
      final List<Activity> activities = const [],
      final List<String> categories = const [
        'Sports',
        'Food',
        'Kids',
        'Creative',
        'Popular',
        'Calm'
      ],
      this.searchParams = const ActivitySearchParams()})
      : _activities = activities,
        _categories = categories;

  @override
  @JsonKey()
  final bool isInitialLoad;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSearching;
  final List<Activity> _activities;
  @override
  @JsonKey()
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final ActivitySearchParams searchParams;

  @override
  String toString() {
    return 'ActivitiesState(isInitialLoad: $isInitialLoad, isLoading: $isLoading, isSearching: $isSearching, activities: $activities, categories: $categories, searchParams: $searchParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivitiesStateImpl &&
            (identical(other.isInitialLoad, isInitialLoad) ||
                other.isInitialLoad == isInitialLoad) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.searchParams, searchParams) ||
                other.searchParams == searchParams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isInitialLoad,
      isLoading,
      isSearching,
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_categories),
      searchParams);

  /// Create a copy of ActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivitiesStateImplCopyWith<_$ActivitiesStateImpl> get copyWith =>
      __$$ActivitiesStateImplCopyWithImpl<_$ActivitiesStateImpl>(
          this, _$identity);
}

abstract class _ActivitiesState implements ActivitiesState {
  const factory _ActivitiesState(
      {final bool isInitialLoad,
      final bool isLoading,
      final bool isSearching,
      final List<Activity> activities,
      final List<String> categories,
      final ActivitySearchParams searchParams}) = _$ActivitiesStateImpl;

  @override
  bool get isInitialLoad;
  @override
  bool get isLoading;
  @override
  bool get isSearching;
  @override
  List<Activity> get activities;
  @override
  List<String> get categories;
  @override
  ActivitySearchParams get searchParams;

  /// Create a copy of ActivitiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivitiesStateImplCopyWith<_$ActivitiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
