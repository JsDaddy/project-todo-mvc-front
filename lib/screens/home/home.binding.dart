import 'package:get/get.dart';
import 'todo/filter-panel/filter-panel.controller.dart';
import 'todo/task-list-item/task-list-item.controller.dart';
import 'todo/todo.controller.dart';
import 'todo/todo.service.dart';

class HomeBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get
    ..lazyPut(TodoController.new)
    ..lazyPut(FilterPanelController.new)
    ..lazyPut(TodoService.new)
    ..put(() => TaskListItemController(Get.find()));
  }
}
