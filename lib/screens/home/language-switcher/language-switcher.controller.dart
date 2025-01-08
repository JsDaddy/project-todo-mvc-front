import 'package:get/get.dart';
import 'language-switcher.enum.dart';

class LanguageSwitcherController extends GetxController {
  final Rx<Language> currentLanguage = Language.en.obs;

  void updateLocale(Language language) {
    currentLanguage.value = language;
    Get.updateLocale(language.locale);
  }
}
