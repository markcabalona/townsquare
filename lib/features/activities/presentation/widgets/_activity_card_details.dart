part of 'activity_card.dart';

class _ActivityDetails extends StatelessWidget {
  const _ActivityDetails({
    super.key,
    required this.activity,
  });

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    final AppTheme appTheme = AppTheme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTime(context),
        Text(
          activity.name,
          style: appTheme.textStyles.subtitle2,
        ),
        _buildAddress(context),
        const SizedBox(height: 8),
        _buildChips(context),
      ],
    );
  }

  Text _buildTime(BuildContext context) {
    final AppTheme appTheme = AppTheme.of(context);
    return Text.rich(TextSpan(children: [
      TextSpan(
        text: activity.startDate.format('HH:mm'),
        style: appTheme.textStyles.body2,
      ),
      TextSpan(
        text: ' (${activity.duration.inMinutes} min)',
        style: appTheme.textStyles.body2.copyWith(
          color: appTheme.colors.neutral.shade200,
        ),
      ),
    ]));
  }

  Row _buildAddress(BuildContext context) {
    final AppTheme appTheme = AppTheme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.location_on_outlined,
          size: 12,
        ),
        Text(
          activity.location.address,
          style: appTheme.textStyles.body2.copyWith(
            color: appTheme.colors.neutral.shade200,
          ),
        )
      ],
    );
  }

  Wrap _buildChips(BuildContext context) {
    final AppTheme appTheme = AppTheme.of(context);
    return Wrap(
      runSpacing: 5,
      spacing: 5,
      children: [
        AppChipWidget(
          leading: const Icon(
            Icons.person_outline_rounded,
            size: 12,
          ),
          label:
              '${activity.maxParticipants - activity.participants.length} spots left',
          backgroundColor: appTheme.colors.neutral.shade500,
          foregroundColor: appTheme.colors.neutral.shade200,
        ),
        ...activity.tags.map(
          (e) => AppChipWidget(
            label: e.name.toLowerCase(),
            backgroundColor: appTheme.colors.tags[e],
            foregroundColor: appTheme.colors.tagsTitle[e],
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
          ),
        )
      ],
    );
  }
}
