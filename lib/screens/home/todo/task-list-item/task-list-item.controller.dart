import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../todo.model.dart';
import '../todo.service.dart';

class TaskListItemController extends GetxController {
  TaskListItemController(this.task);

  final TodoService todoService = Get.find<TodoService>();
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
      todoService.updateTaskText(task.id, value);
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
    todoService.updateTaskStatus(task.id, isFinished: isFinished);
  }

  void deleteTask() {
    todoService.deleteTask(task.id);
  }
}
