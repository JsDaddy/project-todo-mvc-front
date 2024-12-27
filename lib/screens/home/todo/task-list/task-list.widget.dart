import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../filter-panel/filter-panel.controller.dart';
import '../todo.controller.dart';
import '../task-list-item/task-list-item.widget.dart';
import '../filter-panel/filter-panel.widget.dart';
import '../todo.model.dart';

class TaskListWidget extends GetView<TodoController> {
  const TaskListWidget({super.key});

  @override
  Widget build(BuildContext context) => Obx(() {
    final FilterPanelController filterController =
    Get.find<FilterPanelController>();

    return Column(
      children: <Widget>[
        if (filterController.filteredTasks.isNotEmpty)
          Column(
            children: filterController.filteredTasks
                .map(
                  (Task task) => TaskListItemWidget(
                task: task,
                onStatusChange: (bool status) =>
                    controller.updateTaskStatus(task, isFinished: status),
                onUpdate: (String updatedText) =>
                    controller.updateTaskText(task, updatedText),
                onDelete: () => controller.deleteTask(task),
              ),
            )
                .toList(),
          ),
        const FilterPanelWidget(),
      ],
    );
  });
}
