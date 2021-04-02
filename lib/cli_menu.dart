import 'dart:io';

import 'package:radency_todo/helpers/task_creator.dart';
import 'package:radency_todo/models/task.dart';

class CliMenu {
  void drawMenu() {
    print('Hello, welcome to my CLI ToDo\n');
    print('You wanna create task?(Press y or n)\n');

    var input = stdin.readLineSync();

    switch (input.toLowerCase()) {
      case 'n':
        print('Ok\n');
        break;
      case 'y':
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
        print('Please input task`s name\n');
        var taskName = stdin.readLineSync();
        creator.createPlainTask(taskName, taskCategory.important);
        break;
      default:
    }
  }
}
