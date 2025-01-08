import '../../../../common/app-translation/translation.extensions.dart';

enum RemainingItemsTranslationNames implements Translation {
  oneItem,
  fewItems,
  manyItems,
}

final Map<String, String> en = <RemainingItemsTranslationNames, String>{
  RemainingItemsTranslationNames.oneItem: 'item left',
  RemainingItemsTranslationNames.fewItems: 'items left',
  RemainingItemsTranslationNames.manyItems: 'items left',
}.st;

final Map<String, String> ru = <RemainingItemsTranslationNames, String>{
  RemainingItemsTranslationNames.oneItem: 'элемент остался',
  RemainingItemsTranslationNames.fewItems: 'элемента осталось',
  RemainingItemsTranslationNames.manyItems: 'элементов осталось',
}.st;

final Map<String, String> uk = <RemainingItemsTranslationNames, String>{
  RemainingItemsTranslationNames.oneItem: 'елемент залишився',
  RemainingItemsTranslationNames.fewItems: 'елементи залишились',
  RemainingItemsTranslationNames.manyItems: 'елементів залишилось',
}.st;
