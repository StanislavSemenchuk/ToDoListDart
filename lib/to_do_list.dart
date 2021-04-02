import 'dart:io';

import 'package:radency_todo/in_memory_repo.dart';
import 'package:radency_todo/models/reccuring_task.dart';
import 'package:radency_todo/services/plain_task_service.dart';
import 'package:radency_todo/services/reccuring_task_service.dart';

import 'helpers/category_chooser.dart';
import 'helpers/day_chooser.dart';
import 'helpers/task_creator.dart';

class ToDoList {
  var tasks = [];
  var plainService = PlainTaskService();
  var recurringService = RecurringTaskService();
  ToDoList() {
    tasks.addAll(InMemRepo.plainTasksList);
    tasks.addAll(InMemRepo.recurringTasksList);
  }

  void createTask() {
    print('You wanna create plain or recurring task?(press p or r)\n');

    var input = stdin.readLineSync();

    var creator = TaskCreator();

    switch (input) {
      case 'p':
        print('Please input task`s name\n');
        var taskName = stdin.readLineSync();
        var category = chooseCategory();
        var t = creator.createPlainTask(taskName, category);
        plainService.addTask(t);
        break;
      case 'r':
        print('Please input task`s name\n');
        var taskName = stdin.readLineSync();
        var category = chooseCategory();
        var plannedDay = chooseDay();
        var t = creator.createReccuringTask(taskName, category, plannedDay);
        recurringService.addTask(t);
        break;
      default:
        print('Only "p" and "r" char are allowed');
    }
  }

  void createMultiTask() {
    print('How many tasks you wanna create ?');
    var taskcount = int.parse(stdin.readLineSync());
    for (var i = 1; i <= taskcount; i++) {
      createTask();
    }
  }

  void getAllTasks() {
    for (var task in tasks) {
      print('${task.id}\n ${task.taskName}\n ${task.category}\n');
    }
  }

  void getTaskById() {
    print('Which task? (input id)\n');

    var id = int.parse(stdin.readLineSync());

    var task = tasks.firstWhere((e) => e.id == id);

    if (task is ReccuringTask) {
      print(
          '${task.id}\n ${task.taskName}\n ${task.category}\n${task.plannedDay}');
    } else {
      print('${task.id}\n ${task.taskName}\n ${task.category}\n');
    }
  }

  void remove() {
    print('Please input id of task wich you wanna delete!');
    var id = int.parse(stdin.readLineSync());

    if (tasks.any((e) => e.id == id)) {
      if (tasks.firstWhere((e) => e.id == id) is ReccuringTask) {
        tasks.removeWhere((e) => e.id == id);
        recurringService.deleteTask(id);
      } else {
        tasks.removeWhere((e) => e.id == id);
        plainService.deleteTask(id);
      }
      print('Deleted\n');
    } else {
      print('Task with this id is not exist!');
    }
  }
}
