import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'todo/todo.controller.dart';
import 'todo/todo.widget.dart';
import '../home/title/title.widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TodoController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const TitleWidget(),
            TodoWidget(),
          ],
        ),
      ),
    );
  }
}