import 'package:get/get.dart';
import 'todo/filter-panel/filter-panel.controller.dart';
import 'todo/todo.controller.dart';

class HomeBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get
    ..lazyPut(TodoController.new)
    ..lazyPut(FilterPanelController.new);
  }
}
