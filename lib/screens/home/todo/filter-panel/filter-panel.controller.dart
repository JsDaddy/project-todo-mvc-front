import 'package:get/get.dart';
import '../todo.controller.dart';
import '../todo.model.dart';
import 'filter-panel.model.dart';

class FilterPanelController extends GetxController {
  final TodoController todoController = Get.find<TodoController>();

  final List<Filter> filters = const <Filter>[
    Filter(label: 'All', key: 'all'),
    Filter(label: 'Active', key: 'active'),
    Filter(label: 'Completed', key: 'completed'),
  ];

  final RxString currentFilter = 'all'.obs;

  List<Task> get tasks => todoController.tasks;

  List<Task> get filteredTasks {
    switch (currentFilter.value) {
      case 'active':
        return tasks.where((Task task) => !task.isFinished).toList();
      case 'completed':
        return tasks.where((Task task) => task.isFinished).toList();
      default:
        return tasks;
    }
  }

  int get activeCount => tasks.where((Task task) => !task.isFinished).length;

  void clearCompleted() {
    todoController.tasks.removeWhere((Task task) => task.isFinished);
  }
}
