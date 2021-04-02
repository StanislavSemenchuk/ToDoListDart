import 'dart:io';

import 'package:radency_todo/models/task.dart';

taskCategory chooseCategory() {
  print(
      'Please input task category\n 1.prior(p)\n 2.important(i)\n 3.medium(m)\n 4.secondary(s)\n 5.unimportant(u)\n Medium default!');
  var input = stdin.readLineSync();

  switch (input) {
    case 'p':
      return taskCategory.prior;
      break;
    case 'i':
      return taskCategory.important;
      break;
    case 'm':
      return taskCategory.medium;
      break;
    case 's':
      return taskCategory.secomdary;
      break;
    case 'u':
      return taskCategory.unimportant;
      break;
    default:
      return taskCategory.medium;
  }
  return taskCategory.medium;
}
