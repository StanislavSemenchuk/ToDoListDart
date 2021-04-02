import 'package:radency_todo/models/plain_task.dart';
import 'package:radency_todo/models/reccuring_task.dart';
import 'package:radency_todo/models/task.dart';

class TaskCreator {
  PlainTask createPlainTask(String taskName, taskCategory categoty) {
    return PlainTask(taskName, categoty);
  }

  ReccuringTask createReccuringTask(
      String taskName, taskCategory category, dayOfTheWeek plannedDay) {
    return ReccuringTask(taskName, category, plannedDay);
  }
}
