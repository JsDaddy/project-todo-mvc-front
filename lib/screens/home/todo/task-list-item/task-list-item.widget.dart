import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/input/input.widget.dart';
import '../todo.model.dart';
import 'task-list-item.controller.dart';

class TaskListItemWidget extends StatelessWidget {
  const TaskListItemWidget({
    required this.task,
    super.key,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(
          () => TaskListItemController(task),
      tag: task.id.toString(),
    );

    return GetBuilder<TaskListItemController>(
      tag: task.id.toString(),
      builder: (TaskListItemController controller) => Obx(() {
        if (controller.isEditing.value) {
          return InputWidget(
            textController: controller.textController,
            focusNode: controller.focusNode,
            onSubmitted: controller.saveEdit,
          );
        }

        return MouseRegion(
          onEnter: (_) => controller.toggleHover(isHovered: true),
          onExit: (_) => controller.toggleHover(isHovered: false),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: <Widget>[
                Checkbox(
                  value: task.isFinished,
                  onChanged: (bool? isFinished) =>
                    controller.toggleCompletion(isFinished: isFinished!)
                  ,
                ),
                Expanded(
                  child: GestureDetector(
                    onDoubleTap: controller.startEditing,
                    child: Text(
                      task.title,
                      style: TextStyle(
                        fontSize: 16,
                        decoration: task.isFinished
                            ? TextDecoration.lineThrough
                            : null,
                        color: task.isFinished ? Colors.grey : Colors.black,
                      ),
                    ),
                  ),
                ),
                if (controller.isHovered.value)
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: controller.deleteTask,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(
                      minWidth: 30,
                      minHeight: 30,
                    ),
                  ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
