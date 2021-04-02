import 'dart:io';

import 'package:radency_todo/models/reccuring_task.dart';

dayOfTheWeek chooseDay() {
  print(
      'Please input task category\n 1.monday(m)\n 2.tuesday(tu)\n 3.wednesday(w)\n 4.thursday(th)\n 5.friday(f)\n 6.saturday(sa)\n 7.sunday(su)\n Monday default!');
  var input = stdin.readLineSync();

  switch (input) {
    case 'm':
      return dayOfTheWeek.monday;
      break;
    case 'tu':
      return dayOfTheWeek.tuesday;
      break;
    case 'w':
      return dayOfTheWeek.wednesday;
      break;
    case 'th':
      return dayOfTheWeek.thursday;
      break;
    case 'f':
      return dayOfTheWeek.friday;
      break;
    case 'sa':
      return dayOfTheWeek.saturday;
      break;
    case 'su':
      return dayOfTheWeek.sunday;
    default:
      return dayOfTheWeek.monday;
  }
}
