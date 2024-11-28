import 'package:flutter/material.dart';
import 'package:townsquare/core/enums/platforms.dart';
import 'package:townsquare/core/extensions/text_style_ext.dart';
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
      padding: padding ?? _getPadding(context),
      child: _buildChild(context),
    );
  }

  EdgeInsets _getPadding(BuildContext context) {
    final platform = AppTheme.of(context).platform;
    final paddings = switch (platform) {
      Platforms.mobile => (vertical: 2.0, horizontal: 8.0),
      (_) => (vertical: 4.0, horizontal: 8.0),
    };
    return EdgeInsets.symmetric(
      vertical: paddings.vertical,
      horizontal: paddings.horizontal,
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
    final appTheme = AppTheme.of(context);
    return SizedBox(
      child: label == null
          ? icon!
          : Text(
              label!,
              style: appTheme.textStyles.body3
                  .copyWith(color: foregroundColor)
                  .withLineHeight(16),
            ),
    );
  }
}
