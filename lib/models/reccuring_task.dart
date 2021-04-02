import 'package:radency_todo/models/task.dart';

class ReccuringTask implements Task {
  @override
  int id;

  @override
  String taskName;

  @override
  taskCategory category;

  dayOfTheWeek plannedDay;

  ReccuringTask(
      String taskName, taskCategory category, dayOfTheWeek plannedDay) {
    this.taskName = taskName;
    this.category = category;
    this.plannedDay = plannedDay;
  }
}

enum dayOfTheWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday
}
