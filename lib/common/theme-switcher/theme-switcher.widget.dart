import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme-switcher.controller.dart';
import '../theme/theme-switcher.enum.dart';

class ThemeSwitcherWidget extends GetView<ThemeController> {
  const ThemeSwitcherWidget({super.key});

  @override
  Widget build(BuildContext context) => Obx(() => DropdownButton<ThemeType>(
        value: controller.currentTheme.value,
        onChanged: (ThemeType? theme) {
          if (theme != null) {
            controller.updateTheme(theme);
          }
        },
        items: ThemeType.values
            .map<DropdownMenuItem<ThemeType>>(
                (ThemeType theme) => DropdownMenuItem<ThemeType>(
                      value: theme,
                      child: Text(theme.title),
                    ))
            .toList(),
      ));
}
