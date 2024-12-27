import 'package:get/get.dart';
import 'todo.model.dart';

class TodoService extends GetxService {
  final RxList<Task> tasks = <Task>[].obs;

  void updateTaskStatus(String id, {required bool isFinished}) {
    tasks.where((Task task) => task.id == id).forEach((Task task) {
      task.isFinished = isFinished;
    });
    tasks.refresh();
  }

  void updateTaskText(String id, String updatedText) {
    tasks.where((Task task) => task.id == id).forEach((Task task) {
      task.title = updatedText;
    });
  }


  List<Task> filteredTasks(String filter) {
    switch (filter) {
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
    tasks.add(Task(title: title, id: '${tasks.length + 1}'));
  }


  void clearCompleted() {
    tasks.removeWhere((Task task) => task.isFinished);
  }

  void deleteTask(String id) {
    tasks.removeWhere((Task task) => task.id == id);
  }
}
