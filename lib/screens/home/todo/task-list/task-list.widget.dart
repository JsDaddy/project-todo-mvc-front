import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../todo.controller.dart';
import '../task-list-item/task-list-item.widget.dart';
import '../filter-panel/filter-panel.widget.dart';
import '../todo.model.dart';

class TaskListWidget extends StatelessWidget {
  TaskListWidget({super.key});

  final TodoController controller = Get.find<TodoController>();

  @override
  Widget build(BuildContext context) => Column(
      children: <Widget>[
        Obx(() {
          final List<Task> filteredTasks = controller.filteredTasks;
          if (filteredTasks.isNotEmpty) {
            return Column(
              children: filteredTasks.map((Task task) => TaskListItemWidget(
                  task: task,
                  onStatusChange: (bool status) =>
                      controller.updateTaskStatus(task, isFinished: status),
                  onUpdate: (String updatedText) =>
                      controller.updateTaskText(task, updatedText),
                  onDelete: () => controller.deleteTask(task),
                )).toList(),
            );
          }
          return const SizedBox();
        }),
        Obx(() {
          final RxList<Task> tasks = controller.tasks;
          if (tasks.isNotEmpty) {
            return FilterPanelWidget();
          }
          return const SizedBox();
        }),
      ],
    );
}

