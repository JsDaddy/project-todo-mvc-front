import 'package:get/get.dart';
import 'filter-panel/filter-panel.enum.dart';
import 'todo.model.dart';

class TodoService extends GetxService {
  final RxList<TaskModel> tasks = <TaskModel>[].obs;

  void updateTaskStatus(String id, {required bool isFinished}) {
    tasks.firstWhere((TaskModel task) => task.id == id).isFinished = isFinished;
    tasks.refresh();
  }

  void updateTaskText(String id, String updatedText) {
    tasks.firstWhere((TaskModel task) => task.id == id).title = updatedText;
  }


  List<TaskModel> filteredTasks(FilterType filter) {
    switch (filter) {
      case FilterType.active:
        return tasks.where((TaskModel task) => !task.isFinished).toList();
      case FilterType.completed:
        return tasks.where((TaskModel task) => task.isFinished).toList();
      default:
        return tasks;
    }
  }

  int get activeCount => tasks.where((TaskModel task) => !task.isFinished).length;

  void addTask(String title) {
    tasks.add(TaskModel(title: title, id: '${tasks.length + 1}'));
  }

  void clearCompleted() {
    tasks.removeWhere((TaskModel task) => task.isFinished);
  }

  void deleteTask(String id) {
    tasks.removeWhere((TaskModel task) => task.id == id);
  }
}
