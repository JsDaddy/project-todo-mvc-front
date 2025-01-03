import '../../../../common/app-translation/translation.extensions.dart';

enum AddTaskTranslationNames implements Translation {
  title,
}

final Map<String, String> en = <AddTaskTranslationNames, String>{
  AddTaskTranslationNames.title: 'What needs to be done?',
}.st;

final Map<String, String> ru = <AddTaskTranslationNames, String>{
  AddTaskTranslationNames.title: 'Что нужно сделать?',
}.st;

final Map<String, String> uk = <AddTaskTranslationNames, String>{
  AddTaskTranslationNames.title: 'Що потрібно зробити?',
}.st;
