import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'todo/todo.controller.dart';
import 'todo/todo.widget.dart';
import '../home/title/title.widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(TodoController.new);

    return const Scaffold(
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
}