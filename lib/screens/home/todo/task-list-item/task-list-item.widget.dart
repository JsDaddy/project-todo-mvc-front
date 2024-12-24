import 'package:flutter/material.dart';
import '../../../../common/input/input.widget.dart';
import 'task-list-item.controller.dart';
import '../todo.model.dart';

class TaskListItemWidget extends StatefulWidget {
  const TaskListItemWidget({
    required this.task,
    required this.onStatusChange,
    required this.onUpdate,
    required this.onDelete,
    super.key,
  });

  final Task task;
  final ValueChanged<bool> onStatusChange;
  final ValueChanged<String> onUpdate;
  final VoidCallback onDelete;

  @override
  TaskListItemState createState() => TaskListItemState();
}

class TaskListItemState extends State<TaskListItemWidget> {
  late final TaskListItemController controller;

  @override
  void initState() {
    super.initState();
    controller = TaskListItemController(initialTitle: widget.task.title);
    controller.focusNode.addListener(() {
      if (!controller.focusNode.hasFocus && controller.isEditing) {
        controller.cancelEditing(widget.task.title);
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller.isEditing) {
        return InputWidget(
          textController: controller.textController,
          focusNode: controller.focusNode,
          hintText: 'Edit task...',
          onSubmitted: (String value) {
            controller.saveEdit(widget.onUpdate);
            setState(() {});
          },
        );
    }

    return MouseRegion(
      onEnter: (_) {
        setState(() => controller.isHovered = true);
      },
      onExit: (_) {
        setState(() => controller.isHovered = false);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: <Widget>[
            Checkbox(
              value: widget.task.isFinished,
              onChanged: (bool? value) {
                if (value != null) {
                  widget.onStatusChange(value);
                }
              },
            ),
            Expanded(
              child: GestureDetector(
                onDoubleTap: () {
                  controller.startEditing();
                  setState(() {});
                },
                child: Text(
                  widget.task.title,
                  style: TextStyle(
                    fontSize: 16,
                    decoration: widget.task.isFinished
                        ? TextDecoration.lineThrough
                        : null,
                    color: widget.task.isFinished ? Colors.grey : Colors.black,
                  ),
                ),
              ),
            ),
            if (controller.isHovered)
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: widget.onDelete,
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
  }
}
