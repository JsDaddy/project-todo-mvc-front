import '../../../../common/app-translation/translation.extensions.dart';

enum FilterPanelTranslationNames implements Translation {
  clearItems,
  itemsLeft,
  all,
  active,
  completed
}

final Map<String, String> en = <FilterPanelTranslationNames, String>{
  FilterPanelTranslationNames.clearItems: 'Clear completed',
  FilterPanelTranslationNames.all: 'All',
  FilterPanelTranslationNames.active: 'Active',
  FilterPanelTranslationNames.completed: 'Completed',
  FilterPanelTranslationNames.itemsLeft: '@count items left',
}.st;

final Map<String, String> ru = <FilterPanelTranslationNames, String>{
  FilterPanelTranslationNames.clearItems: 'Очистить выполненные',
  FilterPanelTranslationNames.all: 'Все',
  FilterPanelTranslationNames.active: 'Активные',
  FilterPanelTranslationNames.completed: 'Выполненные',
  FilterPanelTranslationNames.itemsLeft:
      '@count элемент остался|@count элемента осталось|@count элементов осталось',
}.st;

final Map<String, String> uk = <FilterPanelTranslationNames, String>{
  FilterPanelTranslationNames.clearItems: 'Очистити виконані',
  FilterPanelTranslationNames.all: 'Усі',
  FilterPanelTranslationNames.active: 'Активні',
  FilterPanelTranslationNames.completed: 'Виконані',
  FilterPanelTranslationNames.itemsLeft:
      '@count елемент залишився|@count елементи залишились|@count елементів залишилось',
}.st;
