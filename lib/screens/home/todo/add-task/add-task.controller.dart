import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../todo.service.dart';

class AddTaskController extends GetxController {
  AddTaskController(this._todoService);

  final TodoService _todoService;
  final TextEditingController textController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  void addTask(String task) {
    if (task.isNotEmpty) {
      _todoService.addTask(task);
      textController.clear();
    }
  }
}
