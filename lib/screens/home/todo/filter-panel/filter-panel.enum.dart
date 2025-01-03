import '../../../../common/app-translation/translation.extensions.dart';
import 'filter-panel.translation.dart';

enum FilterType {
  all(FilterPanelTranslationNames.all),
  active(FilterPanelTranslationNames.active),
  completed(FilterPanelTranslationNames.completed);

  const FilterType(this.translationKey);

  final FilterPanelTranslationNames translationKey;

  String get type => translationKey.tr;
}
