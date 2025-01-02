import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    required this.textController,
    required this.focusNode,
    required this.onSubmitted,
    this.hintText = '',
    super.key,
  });

  final TextEditingController textController;
  final FocusNode focusNode;
  final String hintText;
  final Function(String) onSubmitted;

  @override
  Widget build(BuildContext context) => TextField(
        controller: textController,
        focusNode: focusNode,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2),
          ),
        ),
        style: const TextStyle(fontSize: 18),
        onSubmitted: onSubmitted,
        onTapOutside: (PointerDownEvent event) {
          focusNode.unfocus();
        },
      );
}
