import 'package:get/get.dart';
import '../../common/app-translation/app-translation.dart';
import 'language-switcher/language-switcher.controller.dart';
import 'todo/add-task/add-task.controller.dart';
import 'todo/filter-panel/filter-panel.controller.dart';
import 'todo/task-list-item/task-list-item.controller.dart';
import 'todo/todo.service.dart';

class HomeBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get
      ..lazyPut(AppTranslation.new)
      ..lazyPut(TodoService.new)
      ..lazyPut(LanguageSwitcherController.new)
      ..lazyPut(() => AddTaskController(Get.find()))
      ..lazyPut(() => FilterPanelController(Get.find()))
      ..lazyPut(() => TaskListItemController(Get.find(), Get.find()));
  }
}
