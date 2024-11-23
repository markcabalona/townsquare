import 'package:flutter/material.dart';
import 'package:townsquare/core/extensions/date_time_formatter_ext.dart';
import 'package:townsquare/core/theme/app_theme.dart';
import 'package:townsquare/core/widgets/app_chip_widget.dart';
import 'package:townsquare/features/activities/domain/entities/activity.dart';

part '_activity_card_details.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.activity,
  });
  final Activity activity;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return SizedBox(
      width: 554,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 32,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _ActivityDetails(
                  activity: activity,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    '${activity.price.toInt()}€',
                    style: appTheme.textStyles.subtitle2,
                  ),
                  const SizedBox(height: 32),
                  FilledButton(
                    onPressed: () {},
                    child: Text(
                      'Join',
                      style: appTheme.textStyles.body2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
