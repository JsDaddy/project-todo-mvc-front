import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../common/button/button.widget.dart';
import '../filter-panel.enum.dart';
import '../filter-panel.controller.dart';

class FilterPanelButtons extends GetView<FilterPanelController> {
  const FilterPanelButtons({super.key});

  @override
  Widget build(BuildContext context) => Obx(() {
    return Wrap(
      spacing: 10,
      children: controller.filters
          .map<Widget>(
            (FilterType filter) => ButtonWidget(
          title: filter.type,
          isActive: controller.currentFilter.value == filter,
          onTap: () => controller.setFilter(filter),
        ),
      )
          .toList(),
    );
  });
}
