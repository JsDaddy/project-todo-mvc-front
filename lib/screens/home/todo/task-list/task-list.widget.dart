import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../filter-panel/filter-panel.controller.dart';
import '../task-list-item/task-list-item.widget.dart';
import '../filter-panel/filter-panel.widget.dart';
import '../todo.model.dart';

class TaskListWidget extends GetView<FilterPanelController> {
  const TaskListWidget({super.key});

  @override
  Widget build(BuildContext context) => Obx(() => Column(
      children: <Widget>[
        if (controller.filteredTasks.isNotEmpty)
          Column(
            children: controller.filteredTasks
                .map(
                  (TaskModel task) => TaskListItemWidget(
                task: task,
              ),
            )
                .toList(),
          ),
        const FilterPanelWidget(),
      ],
    ));
}
