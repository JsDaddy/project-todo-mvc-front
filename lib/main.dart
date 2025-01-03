import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'common/app-translation/app-translation.dart';
import 'screens/home/home.binding.dart';
import 'screens/home/home.screen.dart';

Future<void> main() async {
  await HomeBinding().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        initialBinding: HomeBinding(),
        home: const HomeScreen(),
        translationsKeys: Get.find<AppTranslation>().combineAllTranslations(),
        locale: const Locale('en'),
        fallbackLocale: const Locale('en'),
      );
}
