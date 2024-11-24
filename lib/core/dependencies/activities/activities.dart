import 'package:get_it/get_it.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_cubit.dart';

void initializeActivities() {
  GetIt.instance.registerLazySingleton<ActivitiesCubit>(
    () => ActivitiesCubit(),
  );
}
