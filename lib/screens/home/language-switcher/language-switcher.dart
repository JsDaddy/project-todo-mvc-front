// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'language-switcher.controller.dart';
//
// class LanguageSwitcher extends GetView<LocaleController> {
//   const LanguageSwitcher({super.key});
//
//   @override
//   Widget build(BuildContext context) => Obx(() => DropdownButton<Locale>(
//         value: controller.locales.firstWhere(
//           (Locale locale) =>
//               locale.languageCode ==
//               controller.currentLocale.value.languageCode,
//           orElse: () => controller.locales.first,
//         ),
//         onChanged: (Locale? locale) {
//           if (locale != null) {
//             controller.updateLocale(locale);
//           }
//         },
//         items: controller.locales
//             .map<DropdownMenuItem<Locale>>(
//                 (Locale locale) => DropdownMenuItem<Locale>(
//                       value: locale,
//                       child: Text(controller.localeNames[locale.languageCode] ??
//                           locale.languageCode),
//                     ))
//             .toList(),
//       ));
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'language-switcher.controller.dart';
import 'language-switcher.enum.dart';

class LanguageSwitcher extends GetView<LocaleController> {
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
