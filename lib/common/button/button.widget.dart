import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    required this.label,
    required this.onTap,
    this.isActive = false,
    super.key,
  });

  final String label;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          side: WidgetStateProperty.all(
            BorderSide(
              color: isActive ? Colors.red : Colors.transparent,
              width: 2,
            ),
          ),
          foregroundColor: WidgetStateProperty.all(
            isActive ? Colors.red : Colors.grey,
          ),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 16),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
}
