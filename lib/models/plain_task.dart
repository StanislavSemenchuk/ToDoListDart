import 'package:radency_todo/models/task.dart';

class PlainTask implements Task {
  @override
  int id;
  @override
  String taskName;
  @override
  taskCategory category;

  PlainTask(String taskName, taskCategory category) {
    this.taskName = taskName;
    this.category = category;
  }
}
