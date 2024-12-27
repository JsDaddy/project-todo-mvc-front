import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../todo.model.dart';
import '../todo.service.dart';

class TaskListItemController extends GetxController {
  TaskListItemController(this.task, this._todoService);

  final TodoService _todoService;
  final TextEditingController textController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final RxBool isEditing = false.obs;
  final RxBool isHovered = false.obs;
  final TaskModel task;

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
      _todoService.updateTaskText(task.id, value);
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

  void toggleCompletion({bool? isFinished}) {
    if (isFinished != null) {
      _todoService.updateTaskStatus(task.id, isFinished: isFinished);
    }
  }

  void deleteTask() {
    _todoService.deleteTask(task.id);
  }
}
