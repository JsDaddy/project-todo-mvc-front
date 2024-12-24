import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../todo.controller.dart';
import '../../../../common/input/input.widget.dart';

class AddTaskWidget extends StatelessWidget {
  const AddTaskWidget({
    required this.textController, super.key,
  });

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    final TodoController controller = Get.find<TodoController>();
    final FocusNode focusNode = FocusNode();

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: InputWidget(
        textController: textController,
        focusNode: focusNode,
        hintText: 'What needs to be done?',
        onSubmitted: (String value) {
          if (value.isNotEmpty) {
            controller.addTask(value);
            textController.clear();
          }
        },
      ),
    );
  }
}
