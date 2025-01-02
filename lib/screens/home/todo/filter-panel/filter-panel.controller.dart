import 'package:get/get.dart';
import '../todo.model.dart';
import '../todo.service.dart';
import 'filter-panel.enum.dart';

class FilterPanelController extends GetxController {
  FilterPanelController(this._todoService);

  final TodoService _todoService;
  final Rx<FilterType> currentFilter = FilterType.all.obs;
  final List<FilterType> filters = FilterType.values;

  List<TaskModel> get filteredTasks =>
      _todoService.filteredTasks(currentFilter.value);
  List<TaskModel> get tasks => _todoService.tasks;

  int get activeCount => _todoService.activeCount;

  void clearCompleted() {
    _todoService.clearCompleted();
  }

  void setFilter(FilterType filter) {
    currentFilter.value = filter;
  }
}
