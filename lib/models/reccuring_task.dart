import 'package:radency_todo/models/task.dart';

class ReccuringTask implements Task {
  @override
  int id;

  @override
  String taskName;

  @override
  taskCategory category;

  dayOfTheWeek plannedDay;
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
