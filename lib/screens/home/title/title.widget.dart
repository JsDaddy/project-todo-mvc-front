import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.only(top: 50, bottom: 20),
        child: Text(
          'todos',
          style: TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.w300,
            color: Colors.red,
          ),
        ),
      );
}
