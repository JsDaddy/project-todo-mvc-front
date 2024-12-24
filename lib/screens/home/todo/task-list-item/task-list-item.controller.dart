import 'package:flutter/material.dart';

class TaskListItemController {
  TaskListItemController({required String initialTitle}) {
    textController = TextEditingController(text: initialTitle);
    focusNode = FocusNode();
  }

  bool isEditing = false;
  bool isHovered = false;
  late TextEditingController textController;
  late FocusNode focusNode;


  void startEditing() {
    isEditing = true;
    focusNode.requestFocus();
  }

  void saveEdit(Function(String) onUpdate) {
    if (textController.text.isNotEmpty) {
      onUpdate(textController.text);
    }
    isEditing = false;
  }

  void cancelEditing(String originalTitle) {
    isEditing = false;
    textController.text = originalTitle;
  }

  void dispose() {
    textController.dispose();
    focusNode.dispose();
  }
}
