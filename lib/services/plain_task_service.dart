import 'package:radency_todo/in_memory_repo.dart';
import 'package:radency_todo/models/task.dart';

class PlainTaskService {
  int lastId = 0;

  void addTask(Task task) {
    task.id = InMemRepo.plainTaskLastId;
    InMemRepo.plainTasksList.add(task);
    InMemRepo.plainTaskLastId++;
  }

  void addMultiTasks(List<Task> tasks) {
    for (var item in tasks) {
      item.id = InMemRepo.plainTaskLastId;
      InMemRepo.plainTasksList.add(item);
      InMemRepo.plainTaskLastId++;
    }
  }

  List getAllTasks() {
    return InMemRepo.plainTasksList;
  }

  Task getById(int id) {
    return InMemRepo.plainTasksList.firstWhere((e) => e.id == id) ??
        ArgumentError('Element with this id was not found');
  }

  void deleteTask(int id) {
    InMemRepo.plainTasksList.removeWhere((t) => t.id == id);
  }

  void removeMultiples(int fromId, int toId) {
    InMemRepo.plainTasksList.removeRange(fromId, toId);
  }

  void updateTask(int id, Task task) {
    InMemRepo.plainTasksList[
        InMemRepo.plainTasksList.indexWhere((e) => e.id == id)] = task;
  }
}
