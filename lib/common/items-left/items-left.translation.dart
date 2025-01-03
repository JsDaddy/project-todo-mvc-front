import '../../../../common/app-translation/translation.extensions.dart';

enum ItemsLeftTranslationNames implements Translation {
  oneItem,
  fewItems,
  manyItems,
}

final Map<String, String> en = <ItemsLeftTranslationNames, String>{
  ItemsLeftTranslationNames.oneItem: 'item left',
  ItemsLeftTranslationNames.fewItems: 'items left',
  ItemsLeftTranslationNames.manyItems: 'items left',
}.st;

final Map<String, String> ru = <ItemsLeftTranslationNames, String>{
  ItemsLeftTranslationNames.oneItem: 'элемент остался',
  ItemsLeftTranslationNames.fewItems: 'элемента осталось',
  ItemsLeftTranslationNames.manyItems: 'элементов осталось',
}.st;

final Map<String, String> uk = <ItemsLeftTranslationNames, String>{
  ItemsLeftTranslationNames.oneItem: 'елемент залишився',
  ItemsLeftTranslationNames.fewItems: 'елементи залишились',
  ItemsLeftTranslationNames.manyItems: 'елементів залишилось',
}.st;
