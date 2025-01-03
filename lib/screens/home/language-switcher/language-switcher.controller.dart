import 'package:get/get.dart';
import 'language-switcher.enum.dart';

class LocaleController extends GetxController {
  final Rx<Language> currentLanguage = Language.en.obs;

  List<Language> get languages => Language.values;

  void updateLocale(Language language) {
    currentLanguage.value = language;
    Get.updateLocale(language.locale);
  }
}
