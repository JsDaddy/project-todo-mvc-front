import 'package:get/get.dart';
import '../todo.model.dart';
import '../todo.service.dart';
import 'filter-panel.model.dart';

class FilterPanelController extends GetxController {
  final TodoService todoService = Get.find<TodoService>();

  final List<Filter> filters = const <Filter>[
    Filter(label: 'All', key: 'all'),
    Filter(label: 'Active', key: 'active'),
    Filter(label: 'Completed', key: 'completed'),
  ];

  final RxString currentFilter = 'all'.obs;

  List<Task> get filteredTasks => todoService.filteredTasks(currentFilter.value);

  int get activeCount => todoService.activeCount;
}
