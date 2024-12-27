import 'package:get/get.dart';
import '../todo.model.dart';
import '../todo.service.dart';
import 'filter-panel.enum.dart';
import 'filter-panel.model.dart';

class FilterPanelController extends GetxController {
  FilterPanelController(this._todoService);

  final TodoService _todoService;
  final Rx<FilterType> currentFilter = FilterType.all.obs;
  final List<FilterModel> filters = const <FilterModel>[
    FilterModel(type: FilterType.all),
    FilterModel(type: FilterType.active),
    FilterModel(type: FilterType.completed),
  ];

  List<TaskModel> get filteredTasks => _todoService.filteredTasks(currentFilter.value.label);
  List<TaskModel> get tasks => _todoService.tasks;

  int get activeCount => _todoService.activeCount;

  void clearCompleted() {
    _todoService.clearCompleted();
  }

  void setFilter(FilterType filter) {
    currentFilter.value = filter;
  }
}
