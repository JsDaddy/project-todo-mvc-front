import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'language-switcher.controller.dart';
import 'language-switcher.enum.dart';

class LanguageSwitcher extends GetView<LanguageSwitcherController> {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) => Obx(() => DropdownButton<Language>(
        value: controller.currentLanguage.value,
        onChanged: (Language? language) {
          if (language != null) {
            controller.updateLocale(language);
          }
        },
        items: controller.languages
            .map<DropdownMenuItem<Language>>(
                (Language language) => DropdownMenuItem<Language>(
                      value: language,
                      child: Text(language.title),
                    ))
            .toList(),
      ));
}
