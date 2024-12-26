import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../todo.controller.dart';
import '../../../../common/input/input.widget.dart';

class AddTaskWidget extends GetView<TodoController> {
  const AddTaskWidget({ super.key });


  @override
  Widget build(BuildContext context) => Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: InputWidget(
        textController: controller.textController,
        focusNode: controller.focusNode,
        hintText: 'What needs to be done?',
        onSubmitted: (String value) {
          if (value.isNotEmpty) {
            controller.addTask(value);
            controller.textController.clear();
          }
        },
      ),
    );
}
