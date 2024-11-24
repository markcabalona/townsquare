import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_state.dart';

class ActivitiesCubit extends Cubit<ActivitiesState> {
  ActivitiesCubit() : super(const ActivitiesState());

  Future<void> loadInitialActivities() async {
    // TODO: Implement loading initial set of activities
  }

  Future<void> fetchMoreActivities() async {
    // TODO: Implement fetching more activities
    // - with current ActivitySearchParams applied
  }

  Future<void> searchActivities() async {
    // TODO: Implement searching activities with current ActivitySearchParams
  }

  Future<void> updateSearchParams({
    String? keyword,
    List<String>? categories,
  }) async {
    emit(
      state.copyWith(
        searchParams: state.searchParams.copyWith(
          keyword: keyword,
          categories: categories,
        ),
      ),
    );
  }
}
