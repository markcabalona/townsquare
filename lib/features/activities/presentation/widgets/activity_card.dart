import 'package:flutter/material.dart';
import 'package:townsquare/core/enums/platforms.dart';
import 'package:townsquare/core/extensions/date_time_formatter_ext.dart';
import 'package:townsquare/core/extensions/text_style_ext.dart';
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
    return Card(
      child: Padding(
        padding: _getPadding(context),
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
    );
  }

  EdgeInsets _getPadding(BuildContext context) {
    final platform = AppTheme.of(context).platform;
    final paddings = switch (platform) {
      Platforms.mobile => (vertical: 8.0, horizontal: 16.0),
      (_) => (vertical: 12.0, horizontal: 32.0),
    };
    return EdgeInsets.symmetric(
      vertical: paddings.vertical,
      horizontal: paddings.horizontal,
    );
  }
}
