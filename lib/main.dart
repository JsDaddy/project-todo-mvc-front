import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/home/home.screen.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
      title: 'Todos',
      // initialBinding: HomeBinding(),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
        ),
      ],
    );
}
