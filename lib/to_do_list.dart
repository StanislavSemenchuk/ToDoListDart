import 'package:radency_todo/models/task.dart';

class ToDoList {
  final tasksList = <Task>[];
  int lastId = 0;

  void addTask(Task task) {
    task.id = lastId;
    tasksList.add(task);
    lastId++;
  }

  void addMultiTasks(List<Task> tasks) {
    for (var item in tasks) {
      item.id = lastId;
      tasksList.add(item);
      lastId++;
    }
  }

  List getAllTasks() {
    return tasksList;
  }

  Task getById(int id) {
    return tasksList.firstWhere((e) => e.id == id) ??
        ArgumentError('Element with this id was not found');
  }

  void deleteTask(int id) {
    tasksList.removeWhere((t) => t.id == id);
  }

  void removeMultiples(int fromId, int toId) {
    tasksList.removeRange(fromId, toId);
  }

  void updateTask(int id, Task task) {
    tasksList[tasksList.indexWhere((e) => e.id == id)] = task;
  }
}
