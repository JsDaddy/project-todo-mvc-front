import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../todo.controller.dart';
import '../todo.model.dart';

class TaskListItemController extends GetxController {
  TaskListItemController(this.task);

  final TodoController todoController = Get.find<TodoController>();
  final TextEditingController textController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final RxBool isEditing = false.obs;
  final RxBool isHovered = false.obs;
  final Task task;

  @override
  void onInit() {
    super.onInit();
    textController.text = task.title;

    focusNode.addListener(() {
      if (!focusNode.hasFocus && isEditing.value) {
        cancelEditing();
      }
    });
  }

  @override
  void onClose() {
    textController.dispose();
    focusNode.dispose();
    super.onClose();
  }

  void startEditing() {
    isEditing.value = true;
    focusNode.requestFocus();
  }

  void saveEdit(String value) {
    if (value.isNotEmpty) {
      todoController.updateTaskText(task, value);
    }
    isEditing.value = false;
  }

  void cancelEditing() {
    isEditing.value = false;
    textController.text = task.title;
  }

  void toggleHover({required bool isHovered}) {
    this.isHovered.value = isHovered;
  }

  void toggleCompletion({required bool isFinished}) {
      todoController.updateTaskStatus(task, isFinished: isFinished);
  }

  void deleteTask() {
    todoController.deleteTask(task.id);
  }
}
