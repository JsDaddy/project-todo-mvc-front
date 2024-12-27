import 'package:flutter/material.dart';
import 'todo/todo.widget.dart';
import '../home/title/title.widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            TitleWidget(),
            TodoWidget(),
          ],
        ),
      ),
    );
}