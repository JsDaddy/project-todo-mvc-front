import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/app-translation/translation.extensions.dart';
import '../../../../common/input/input.widget.dart';
import 'add-task.controller.dart';
import 'add-task.translation.dart';

class AddTaskWidget extends GetView<AddTaskController> {
  const AddTaskWidget({super.key});

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
          hintText: AddTaskTranslationNames.title.tr,
          onSubmitted: controller.addTask,
        ),
      );
}
