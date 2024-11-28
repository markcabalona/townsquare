import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:townsquare/core/errors/failures/app_failure.dart';
import 'package:townsquare/features/activities/domain/entities/activity.dart';
import 'package:townsquare/features/activities/domain/repositories/activities_repository.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_state.dart';

class ActivitiesCubit extends Cubit<ActivitiesState> {
  final ActivitiesRepository _repository;
  ActivitiesCubit({
    required ActivitiesRepository repository,
  })  : _repository = repository,
        super(const ActivitiesState());

  Future<void> loadInitialActivities() async {
    final result = await _repository.fetchActivities();
    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          isInitialLoad: false,
        ));
      },
      (activities) {
        emit(
          state.copyWith(
            isInitialLoad: false,
            isLoading: false,
            activities: activities,
          ),
        );
      },
    );
  }

  Future<void> fetchMoreActivities() async {
    emit(state.copyWith(isLoading: true));

    final Either<AppFailure, List<Activity>> result;

    final shouldSearch = state.searchParams.categories.isNotEmpty ||
        state.searchParams.keyword?.isNotEmpty == true;

    if (shouldSearch) {
      result = await _repository.searchActivities(
        searchParameter: state.searchParams,
        offset: state.activities.length,
      );
    } else {
      result = await _repository.fetchActivities(
        offset: state.activities.length,
      );
    }

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          isInitialLoad: false,
        ));
      },
      (activities) {
        emit(
          state.copyWith(
            isInitialLoad: false,
            isLoading: false,
            activities: state.activities + activities,
          ),
        );
      },
    );
  }

  Future<void> searchActivities() async {
    final Either<AppFailure, List<Activity>> result;
    emit(state.copyWith(isSearching: true));

    final shouldSearch = state.searchParams.categories.isNotEmpty ||
        state.searchParams.keyword?.isNotEmpty == true;

    if (shouldSearch) {
      result = await _repository.searchActivities(
        searchParameter: state.searchParams,
      );
    } else {
      result = await _repository.fetchActivities();
    }
    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          isInitialLoad: false,
          isSearching: false,
        ));
      },
      (activities) {
        emit(
          state.copyWith(
            isInitialLoad: false,
            isLoading: false,
            isSearching: false,
            activities: activities,
          ),
        );
      },
    );
  }

  Future<void> updateSearchParams({
    String? keyword,
    List<String>? categories,
  }) async {
    emit(
      state.copyWith(
        searchParams: state.searchParams.copyWith(
          keyword: keyword,
          categories: categories ?? state.searchParams.categories,
        ),
      ),
    );
  }
}
