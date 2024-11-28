import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:townsquare/core/enums/platforms.dart';
import 'package:townsquare/core/extensions/date_time_formatter_ext.dart';
import 'package:townsquare/core/extensions/text_style_ext.dart';
import 'package:townsquare/core/theme/app_theme.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_cubit.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_state.dart';
import 'package:townsquare/features/activities/presentation/widgets/activities_list.dart';
import 'package:townsquare/features/activities/presentation/widgets/categories_selection.dart';
import 'package:townsquare/features/activities/presentation/widgets/search_field.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ActivitiesCubit>(context);
    final appTheme = AppTheme.of(context);
    final isMobile = appTheme.platform == Platforms.mobile;
    return Scaffold(
      body: SizedBox(
        width: 595,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateTime.now().format('EEE, MMM dd'),
              style: appTheme.textStyles.body1
                  .copyWith(
                    fontWeight: FontWeight.w500,
                    color: appTheme.colors.neutral.shade500,
                  )
                  .withLineHeight(16.71),
            ),
            Text(
              'This week in Estepona',
              style: appTheme.textStyles.heading1
                  .copyWith(fontWeight: FontWeight.w500)
                  .withLineHeight(28),
            ),
            const SizedBox(height: 15),
            SearchField(
              debounceDuration: const Duration(milliseconds: 500),
              onChanged: (value) {
                bloc.updateSearchParams(keyword: value);
                bloc.searchActivities();
              },
            ),
            SizedBox(height: isMobile ? 18 : 26),
            CategoriesSelection(
              debounceDuration: const Duration(milliseconds: 500),
              onChanged: (value) {
                bloc.updateSearchParams(categories: value);
                bloc.searchActivities();
              },
            ),
            SizedBox(height: isMobile ? 24 : 26),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 20 : 26.0,
                ),
                child: BlocBuilder<ActivitiesCubit, ActivitiesState>(
                  builder: (context, state) {
                    if (state.isInitialLoad) {
                      bloc.loadInitialActivities();
                    }
                    if (state.isInitialLoad || state.isSearching) {
                      return const Center(child: CircularProgressIndicator());
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
