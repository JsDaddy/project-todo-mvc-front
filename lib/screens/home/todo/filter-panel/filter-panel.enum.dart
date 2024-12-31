enum FilterType {
  all('All'),
  active('Active'),
  completed('Completed');

  const FilterType(this.type);

  final String type;
}
