import 'package:get/get.dart';
import 'filter-panel/filter-panel.enum.dart';
import 'todo.model.dart';

class TodoService extends GetxService {
  final RxList<TaskModel> tasks = <TaskModel>[].obs;

  void updateTaskStatus(String id, {required bool isFinished}) {
    tasks.firstWhere((TaskModel task) => task.id == id).isFinished.value =
        isFinished;
  }

  void updateTaskText(String id, String updatedText) {
    tasks.firstWhere((TaskModel task) => task.id == id).title = updatedText;
  }

  List<TaskModel> filteredTasks(FilterType filter) {
    switch (filter) {
      case FilterType.active:
        return tasks.where((TaskModel task) => !task.isFinished.value).toList();
      case FilterType.completed:
        return tasks.where((TaskModel task) => task.isFinished.value).toList();
      default:
        return tasks;
    }
  }

  int get activeCount =>
      tasks.where((TaskModel task) => !task.isFinished.value).length;

  void addTask(String title) {
    tasks.add(TaskModel(
      title: title,
      id: '${tasks.length + 1}',
      isFinished: RxBool(false),
    ));
  }

  void clearCompleted() {
    tasks.removeWhere((TaskModel task) => task.isFinished.value);
  }

  void deleteTask(String id) {
    tasks.removeWhere((TaskModel task) => task.id == id);
  }
}
