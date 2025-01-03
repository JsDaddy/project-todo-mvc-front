import 'package:get/get.dart';

import '../../screens/home/title/title.translation.dart' as home_title;
import '../../screens/home/todo/add-task/add-task.translation.dart'
    as home_add_task;
import '../../screens/home/todo/filter-panel/filter-panel.translation.dart'
    as home_filter_panel;

class AppTranslation extends GetxService {
  AppTranslation();

  Map<String, Map<String, String>> translationsKeys =
      <String, Map<String, String>>{
    'en': en,
    'uk': uk,
    'ru': ru,
  };

  void _combineTranslations(Map<String, String> enTranslations,
      Map<String, String> ukTranslations, Map<String, String> ruTranslations) {
    translationsKeys['en']!.addAll(enTranslations);
    translationsKeys['uk']!.addAll(ukTranslations);
    translationsKeys['ru']!.addAll(ruTranslations);
  }

  Map<String, Map<String, String>> combineAllTranslations() {
    _combineTranslations(
      home_title.en,
      home_title.uk,
      home_title.ru,
    );

    _combineTranslations(
      home_add_task.en,
      home_add_task.uk,
      home_add_task.ru,
    );

    _combineTranslations(
      home_filter_panel.en,
      home_filter_panel.uk,
      home_filter_panel.ru,
    );

    return translationsKeys;
  }
}

final Map<String, String> en = <String, String>{};
final Map<String, String> uk = <String, String>{};
final Map<String, String> ru = <String, String>{};
