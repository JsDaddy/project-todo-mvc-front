import 'package:get/get.dart';
import 'todo.service.dart';

class TodoController extends GetxController {
  final TodoService taskService = Get.find<TodoService>();
}
