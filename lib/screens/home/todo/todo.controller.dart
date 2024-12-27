import 'package:get/get.dart';
import 'todo.model.dart';
import 'package:flutter/material.dart';

class TodoController extends GetxController {
  final TextEditingController textController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final RxList<Task> tasks = <Task>[].obs;

  void addTask(String title) {
    tasks.add(Task(title: title, id: '${tasks.length + 1}'));
  }

  void updateTaskStatus(Task task, {required bool isFinished}) {
    final int index = tasks.indexOf(task);
    if (index != -1) {
      tasks[index].isFinished = isFinished;
      tasks.refresh();
    }
  }

  void updateTaskText(Task task, String updatedText) {
    final int index = tasks.indexOf(task);
    if (index != -1) {
      tasks[index].title = updatedText;
      tasks.refresh();
    }
  }

  void deleteTask(String id) {
    tasks.removeWhere((Task task) => task.id == id);
  }
}
