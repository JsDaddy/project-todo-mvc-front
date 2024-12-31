import 'package:get/get.dart';

class TaskModel {
  TaskModel({required this.title, required this.id, required this.isFinished});

  String title;
  RxBool isFinished;
  final String id;
}
