import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/button/button.widget.dart';
import '../todo.controller.dart';
import 'filter-panel.model.dart';

class FilterPanelWidget extends GetView<TodoController> {
  const FilterPanelWidget({super.key});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    child: Obx(() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          '${controller.activeCount} items left',
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        Row(
          children: controller.filters
              .map((Filter filter) => ButtonWidget(
            label: filter.label,
            isActive:
            controller.currentFilter.value == filter.key,
            onTap: () => controller.setFilter(filter.key),
          ))
              .toList(),
        ),
        ButtonWidget(
          onTap: controller.clearCompleted,
          label: 'Clear completed',
        ),
      ],
    )),
  );
}
