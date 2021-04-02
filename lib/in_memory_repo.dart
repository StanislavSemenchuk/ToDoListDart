import 'package:radency_todo/models/plain_task.dart';
import 'package:radency_todo/models/reccuring_task.dart';

class InMemRepo {
  static var taskLastId = 0;
  static var plainTasksList = <PlainTask>[];
  static var recurringTasksList = <ReccuringTask>[];
}
