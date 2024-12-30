import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/button/button.widget.dart';
import 'filter-panel.controller.dart';
import 'filter-panel.enum.dart';

class FilterPanelWidget extends GetView<FilterPanelController> {
  const FilterPanelWidget({super.key});

  @override
  Widget build(BuildContext context) => Obx(() {
    if (controller.tasks.isEmpty) {
      return const SizedBox();
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '${controller.activeCount} items left',
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          Wrap(
            spacing: 10,
            children: controller.filters
                .map<Widget>((FilterType filter) => ButtonWidget(
              title: filter.type,
              isActive: controller.currentFilter.value == filter,
              onTap: () => controller.setFilter(filter),
            ))
                .toList(),
          ),
          ButtonWidget(
            onTap: controller.clearCompleted,
            title: 'Clear completed',
          ),
        ],
      ),
    );
  });
}