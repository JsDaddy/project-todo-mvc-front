import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../filter-panel/filter-panel.controller.dart';
import '../task-list-item/task-list-item.widget.dart';
import '../filter-panel/filter-panel.widget.dart';
import '../todo.model.dart';

class TaskListWidget extends GetView<FilterPanelController> {
  const TaskListWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      Obx(() {
        if (controller.filteredTasks.isNotEmpty) {
          return Column(
            children: controller.filteredTasks
                .map<Widget>(
                  (TaskModel task) => TaskListItemWidget(
                task: task,
              ),
            )
                .toList(),
          );
        }
        return const SizedBox();
      }),
      const FilterPanelWidget(),
    ],
  );
}
