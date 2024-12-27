class Task {
  Task({required this.title, required this.id, this.isFinished = false});

  String title;
  bool isFinished;
  final String id;
}