
import 'package:flutter/material.dart';
import 'package:townsquare/core/theme/app_theme.dart';

class AppChipWidget extends StatelessWidget {
  const AppChipWidget({
    super.key,
    this.backgroundColor,
    this.foregroundColor,
    required this.label,
    this.leading,
    this.padding,
  });

  final Color? backgroundColor;
  final Color? foregroundColor;
  final String label;
  final Widget? leading;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(2),
      ),
      padding: padding ??
          const EdgeInsets.symmetric(
            vertical: 4.0,
            horizontal: 8.0,
          ),
      child: _buildChild(context),
    );
  }

  Widget _buildChild(BuildContext context) {
    if (leading == null) return _buildLabel(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        leading!,
        const SizedBox(width: 2),
        _buildLabel(context),
      ],
    );
  }

  Text _buildLabel(BuildContext context) {
    return Text(
      label,
      style: AppTheme.of(context)
          .textStyles
          .body3
          .copyWith(color: foregroundColor),
    );
  }
}
