import 'package:radency_todo/in_memory_repo.dart';
import 'package:radency_todo/models/reccuring_task.dart';

class RecurringTaskService {
  void addTask(ReccuringTask task) {
    task.id = InMemRepo.recurringTaskLastId;
    InMemRepo.recurringTasksList.add(task);
    InMemRepo.plainTaskLastId++;
  }

  void addMultiTasks(List<ReccuringTask> tasks) {
    for (var item in tasks) {
      item.id = InMemRepo.recurringTaskLastId;
      InMemRepo.recurringTasksList.add(item);
      InMemRepo.plainTaskLastId++;
    }
  }

  List getAllTasks() {
    return InMemRepo.recurringTasksList;
  }

  ReccuringTask getById(int id) {
    return InMemRepo.recurringTasksList.firstWhere((e) => e.id == id) ??
        ArgumentError('Element with this id was not found');
  }

  void deleteTask(int id) {
    InMemRepo.recurringTasksList.removeWhere((t) => t.id == id);
  }

  void removeMultiples(int fromId, int toId) {
    InMemRepo.recurringTasksList.removeRange(fromId, toId);
  }

  void updateTask(int id, ReccuringTask task) {
    InMemRepo.recurringTasksList[
        InMemRepo.recurringTasksList.indexWhere((e) => e.id == id)] = task;
  }
}
