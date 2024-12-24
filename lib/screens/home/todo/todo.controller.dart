import 'package:get/get.dart';
import 'todo.model.dart';

class TodoController extends GetxController {
  RxList<Task> tasks = <Task>[].obs;
  RxString currentFilter = 'all'.obs;

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

  void addTask(String title) {
    tasks.add(Task(title: title));
  }

  void updateTaskStatus(Task task, {required bool isFinished}) {
    final int index = tasks.indexOf(task);
    if (index != -1) {
      tasks[index].isFinished = isFinished;
      tasks.refresh();
    }
  }

  void updateTaskText(Task task, String updatedText) {
    final int index = tasks.indexOf(task);
    if (index != -1) {
      tasks[index].title = updatedText;
      tasks.refresh();
    }
  }

  void deleteTask(Task task) {
    tasks.remove(task);
  }

  void setFilter(String filter) {
    currentFilter.value = filter;
  }

  void clearCompleted() {
    tasks.removeWhere((Task task) => task.isFinished);
  }
}
