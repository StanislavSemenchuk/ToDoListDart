import 'dart:io';
import 'package:radency_todo/helpers/task_creator.dart';
import 'package:radency_todo/services/plain_task_service.dart';
import 'package:radency_todo/services/reccuring_task_service.dart';
import 'helpers/category_chooser.dart';
import 'helpers/day_chooser.dart';

class CliMenu {
  void drawMenu() {
    print('Hello, welcome to my CLI ToDo\n');
    print('You wanna create task?(Press y or n)\n');

    var input = stdin.readLineSync();

    switch (input) {
      case 'n':
        print('Ok\n');
        break;
      case 'y':
        createTask();
        break;
      default:
        print('Not accepted input. Only "y" and "n" are accepted\n');
    }
  }

  void createTask() {
    print('You wanna create plain or recurring task?(press p or r)\n');

    var input = stdin.readLineSync();

    TaskCreator creator;

    switch (input) {
      case 'p':
        PlainTaskService plainService;
        print('Please input task`s name\n');
        var taskName = stdin.readLineSync();
        var category = chooseCategory();
        var t = creator.createPlainTask(taskName, category);
        plainService.addTask(t);
        break;
      case 'r':
        RecurringTaskService recurringService;
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
}
