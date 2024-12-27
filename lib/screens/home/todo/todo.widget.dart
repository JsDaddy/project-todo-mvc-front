import 'package:flutter/material.dart';
import 'add-task/add-task.widget.dart';
import 'task-list/task-list.widget.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key});

  @override
  Widget build(BuildContext context) => Container(
      width: 600,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        children: <Widget>[
          AddTaskWidget(),
          TaskListWidget(),
        ],
      ),
    );
}