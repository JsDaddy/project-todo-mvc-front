import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/button/button.widget.dart';
import 'filter-panel.controller.dart';
import 'filter-panel.model.dart';

class FilterPanelWidget extends GetView<FilterPanelController> {
  const FilterPanelWidget({super.key});

  @override
  Widget build(BuildContext context) => Obx(() {
    if (controller.todoService.tasks.isEmpty) {
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
          Row(
            children: controller.filters
                .map<Widget>((Filter filter) => ButtonWidget(
              label: filter.label,
              isActive: controller.currentFilter.value == filter.key,
              onTap: () => controller.currentFilter.value = filter.key,
            ))
                .toList(),
          ),
          ButtonWidget(
            onTap: () => controller.todoService.clearCompleted(),
            label: 'Clear completed',
          ),
        ],
      ),
    );
  });
}
