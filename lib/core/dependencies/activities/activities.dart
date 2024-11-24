import 'package:get_it/get_it.dart';
import 'package:townsquare/features/activities/data/datasources/dummy_datasource.dart';
import 'package:townsquare/features/activities/data/repositories/activities_repository_impl.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_cubit.dart';

void initializeActivities() {
  GetIt.instance.registerLazySingleton<ActivitiesCubit>(
    () => ActivitiesCubit(
      repository: ActivitiesRepositoryImpl(
        datasource: DummyDatasource(),
      ),
    ),
  );
}
