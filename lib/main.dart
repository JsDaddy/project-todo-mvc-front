import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/home/home.screen.dart';
import 'screens/home/home.binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        initialBinding: HomeBinding(),
        home: const HomeScreen(),
      );
}
