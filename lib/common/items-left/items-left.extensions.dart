import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../app-translation/translation.extensions.dart';
import 'items-left.translation.dart';

extension ItemsLeftFormatting on int {
  String get itemsLeft => _getPlural(
        this,
        one: ItemsLeftTranslationNames.oneItem.tr,
        few: ItemsLeftTranslationNames.fewItems.tr,
        many: ItemsLeftTranslationNames.manyItems.tr,
      ).trim();

  String _getPlural(int value,
      {required String one, required String few, required String many}) {
    if (value > 0) {
      return Intl.plural(
        value,
        zero: '',
        one: '$value $one',
        few: '$value $few',
        many: '$value $many',
        other: '$value $many',
        locale: Get.locale?.languageCode,
      );
    }
    return '';
  }
}
