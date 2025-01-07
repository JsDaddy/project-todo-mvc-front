import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/theme-switcher.enum.dart';
import '../theme/theme-switcher.helper.dart';

class ThemeController extends GetxController {
  final Rx<ThemeType> currentTheme = ThemeType.light.obs;

  void updateTheme(ThemeType theme) {
    currentTheme.value = theme;
    final ThemeData selectedTheme = theme == ThemeType.light
        ? ThemeHelper.lightTheme
        : ThemeHelper.darkTheme;
    Get.changeTheme(selectedTheme);
  }
}
