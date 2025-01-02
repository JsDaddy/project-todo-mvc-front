import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {required this.title,
      required this.onTap,
      this.isActive = false,
      super.key});

  final String title;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              border: Border.all(
                color: isActive ? Colors.red : Colors.transparent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(14)),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
            ),
          ))));
}
