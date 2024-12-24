import 'package:flutter/material.dart';
import 'add-task/add-task.widget.dart';
import 'task-list/task-list.widget.dart';


class TodoWidget extends StatelessWidget {
  TodoWidget({super.key});
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) => Container(
      width: 600,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          AddTaskWidget(textController: textController),
          TaskListWidget(),
        ],
      ),
    );
}