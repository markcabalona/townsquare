
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:townsquare/core/enums/tags.dart';
import 'package:townsquare/core/theme/app_theme.dart';
import 'package:townsquare/core/utils/debounce.dart';
import 'package:townsquare/core/widgets/app_chip_widget.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_cubit.dart';
import 'package:townsquare/features/activities/presentation/cubit/activities_state.dart';

class CategoriesSelection extends StatefulWidget {
  const CategoriesSelection({
    super.key,
    required this.debounceDuration,
    this.onChanged,
  });

  final Duration debounceDuration;
  final ValueChanged<List<String>>? onChanged;

  @override
  State<CategoriesSelection> createState() => _CategoriesSelectionState();
}

class _CategoriesSelectionState extends State<CategoriesSelection> {
  final selected = <String>{};

  late final Debounce debounce;

  @override
  void initState() {
    super.initState();
    debounce = Debounce(duration: widget.debounceDuration);
  }

  @override
  void dispose() {
    debounce.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppTheme.of(context).colors;
    return BlocSelector<ActivitiesCubit, ActivitiesState, List<String>>(
      selector: (state) => state.categories,
      builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: AppChipWidget.icon(
                  backgroundColor: colors.tags[Tags.medium],
                  icon: Image.asset('assets/icons/sliders.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: AppChipWidget(
                  label: 'All',
                  backgroundColor: selected.isEmpty
                      ? colors.tertiary.shade400
                      : colors.tags[Tags.medium],
                ),
              ),
              ...state.map(
                (e) {
                  final isSelected = selected.contains(e);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selected.remove(e);
                          } else {
                            selected.add(e);
                          }
                        });
                        debounce.run(() {
                          widget.onChanged?.call(selected.toList());
                        });
                      },
                      child: AppChipWidget(
                        label: e,
                        backgroundColor: isSelected
                            ? colors.tertiary.shade400
                            : colors.tags[Tags.medium],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }
}