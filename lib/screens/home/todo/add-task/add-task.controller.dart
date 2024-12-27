import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../todo.service.dart';

class AddTaskController extends GetxController {
  final TextEditingController textController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final TodoService todoService = Get.find<TodoService>();

  void addTask(String task) {
    if(task.isNotEmpty) {
      todoService.addTask(task);
      textController.clear();
    }
  }
}