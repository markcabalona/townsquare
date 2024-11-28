import 'package:flutter/material.dart';
import 'package:townsquare/core/theme/app_theme.dart';

class AppChipWidget extends StatelessWidget {
  const AppChipWidget._({
    super.key,
    this.backgroundColor,
    this.foregroundColor,
    this.label,
    this.leading,
    this.padding,
    this.icon,
  });
  const factory AppChipWidget({
    Key? key,
    Color? backgroundColor,
    Color? foregroundColor,
    required String label,
    Widget? leading,
    EdgeInsetsGeometry? padding,
  }) = AppChipWidget._;

  const factory AppChipWidget.icon({
    Key? key,
    Color? backgroundColor,
    Color? foregroundColor,
    required Widget icon,
    Widget? leading,
    EdgeInsetsGeometry? padding,
  }) = AppChipWidget._;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final String? label;
  final Widget? leading;
  final EdgeInsetsGeometry? padding;
  final Widget? icon;

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
    if (leading == null) return _buildContent(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        leading!,
        const SizedBox(width: 2),
        _buildContent(context),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    return SizedBox(
      height: 24,
      child: label == null
          ? icon!
          : Text(
              label!,
              style: AppTheme.of(context)
                  .textStyles
                  .body3
                  .copyWith(color: foregroundColor),
            ),
    );
  }
}
