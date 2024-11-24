import 'package:flutter/material.dart';
import 'package:townsquare/core/extensions/date_time_formatter_ext.dart';
import 'package:townsquare/core/theme/app_theme.dart';
import 'package:townsquare/features/activities/domain/entities/activity.dart';
import 'package:townsquare/features/activities/presentation/widgets/activity_card.dart';

class ActivitiesList extends StatelessWidget {
  const ActivitiesList({
    super.key,
    required this.activities,
    this.onFetchMore,
    this.isLoading = false,
  });

  final List<Activity> activities;
  final ValueChanged<int>? onFetchMore;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final AppTheme appTheme = AppTheme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(TextSpan(children: [
          TextSpan(
            text: 'Today ',
            style: appTheme.textStyles.subtitle2,
          ),
          TextSpan(
            text: '/ ${DateTime.now().format('EEEE').toLowerCase()}',
            style: appTheme.textStyles.body2.copyWith(
              color: appTheme.colors.neutral.shade500,
              fontWeight: FontWeight.w500,
            ),
          ),
        ])),
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 554),
            child: ListView.separated(
              itemCount: activities.length,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                if (index >= activities.length - 3) {
                  onFetchMore?.call(activities.length);
                }

                if (isLoading && index >= activities.length - 1) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      buildActivityCard(activities[index]),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(),
                      ),
                    ],
                  );
                }
                return buildActivityCard(activities[index]);
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget buildActivityCard(Activity activity) {
    return Align(
      alignment: Alignment.center,
      child: ActivityCard(activity: activity),
    );
  }
}
