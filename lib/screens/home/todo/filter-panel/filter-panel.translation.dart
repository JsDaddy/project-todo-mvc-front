import '../../../../common/app-translation/translation.extensions.dart';

enum FilterPanelTranslationNames implements Translation {
  clearItems,
  all,
  active,
  completed
}

final Map<String, String> en = <FilterPanelTranslationNames, String>{
  FilterPanelTranslationNames.clearItems: 'Clear completed',
  FilterPanelTranslationNames.all: 'All',
  FilterPanelTranslationNames.active: 'Active',
  FilterPanelTranslationNames.completed: 'Completed',
}.st;

final Map<String, String> ru = <FilterPanelTranslationNames, String>{
  FilterPanelTranslationNames.clearItems: 'Очистить выполненные',
  FilterPanelTranslationNames.all: 'Все',
  FilterPanelTranslationNames.active: 'Активные',
  FilterPanelTranslationNames.completed: 'Выполненные',
}.st;

final Map<String, String> uk = <FilterPanelTranslationNames, String>{
  FilterPanelTranslationNames.clearItems: 'Очистити виконані',
  FilterPanelTranslationNames.all: 'Усі',
  FilterPanelTranslationNames.active: 'Активні',
  FilterPanelTranslationNames.completed: 'Виконані',
}.st;
