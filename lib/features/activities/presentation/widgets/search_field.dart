import 'package:flutter/material.dart';
import 'package:townsquare/core/theme/app_theme.dart';
import 'package:townsquare/core/utils/debounce.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    this.debounceDuration = const Duration(seconds: 0),
    this.onChanged,
  });

  final Duration debounceDuration;
  final ValueChanged<String>? onChanged;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final controller = TextEditingController();

  late final Debounce debounce;

  @override
  void initState() {
    super.initState();
    debounce = Debounce(duration: widget.debounceDuration);
  }

  @override
  void dispose() {
    controller.dispose();
    debounce.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AppTheme appTheme = AppTheme.of(context);
    return TextField(
      controller: controller,
      textAlignVertical: TextAlignVertical.center,
      style: appTheme.textStyles.body1,
      decoration: InputDecoration(
        hintText: 'What do you feel like doing?',
        hintStyle: appTheme.textStyles.body1.copyWith(
          fontWeight: FontWeight.w400,
          color: appTheme.colors.neutral.shade500,
        ),
        suffixIcon: const Icon(
          Icons.search_rounded,
        ),
      ),
      onChanged: (value) {
        debounce.run(
          () {
            widget.onChanged?.call(value);
          },
        );
      },
    );
  }
}
