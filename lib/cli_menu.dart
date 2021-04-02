import 'dart:io';

import 'package:radency_todo/to_do_list.dart';

class CliMenu {
  void drawMenu() {
    print('Hello, welcome to my CLI ToDo\n');
    var toDoList = ToDoList();
    while (true) {
      print(
          'Please choose action\n 1.Create task(1)\n2.Create multiple tasks(2)\n3.Get all tasks(3)\n4.Get task by id(4)\n5.Remove task(5)\n Get all tasks is default');

      var input = stdin.readLineSync();

      switch (input) {
        case '1':
          toDoList.createTask();
          break;
        case '2':
          toDoList.createMultiTask();
          break;
        case '3':
          toDoList.getAllTasks();
          break;
        case '4':
          toDoList.getTaskById();
          break;
        case '5':
          toDoList.remove();
          break;
        default:
          toDoList.getAllTasks();
      }
    }
  }
}
