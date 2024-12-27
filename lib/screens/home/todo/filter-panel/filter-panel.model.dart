import 'filter-panel.enum.dart';

class FilterModel {
  const FilterModel({required this.type});

  final FilterType type;
  String get label => type.label;
}