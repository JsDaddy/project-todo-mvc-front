import '../../../common/app-translation/translation.extensions.dart';

enum TitleTranslationNames implements Translation {
  title,
}

final Map<String, String> en = <TitleTranslationNames, String>{
  TitleTranslationNames.title: 'todos',
}.st;

final Map<String, String> ru = <TitleTranslationNames, String>{
  TitleTranslationNames.title: 'Список задач',
}.st;

final Map<String, String> uk = <TitleTranslationNames, String>{
  TitleTranslationNames.title: 'Список завдань',
}.st;
