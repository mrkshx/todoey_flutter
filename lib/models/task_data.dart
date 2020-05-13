import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy paprika'),
    Task(name: 'Buy banana'),
    Task(name: 'Buy peanuts'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
