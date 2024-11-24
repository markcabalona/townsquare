import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_cubit.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_state.dart';
import 'package:townsquare/features/activities/presentation/widgets/activities_list.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ActivitiesCubit>(context);

    return Scaffold(
      body: BlocBuilder<ActivitiesCubit, ActivitiesState>(
        builder: (context, state) {
          if (state.isInitialLoad) {
            bloc.loadInitialActivities();
          }

          return ActivitiesList(
            activities: state.activities,
            isLoading: state.isLoading,
            onFetchMore: (value) {
              if (!state.isLoading) {
                bloc.fetchMoreActivities();
              }
            },
          );
        },
      ),
    );
  }
}
