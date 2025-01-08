import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../app-translation/translation.extensions.dart';
import 'remaining-items.translation.dart';

extension RemainingItemsFormatter on int {
  String get remainingItemsText => _getPlural(
        this,
        one: RemainingItemsTranslationNames.oneItem.tr,
        few: RemainingItemsTranslationNames.fewItems.tr,
        many: RemainingItemsTranslationNames.manyItems.tr,
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
