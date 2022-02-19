import 'package:flutter/foundation.dart';
import '../models/Task.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class TaskNotif extends ChangeNotifier {
  List<Task> _tasks = [
    Task(
      name: 'Prier',
      isDone: true,
    ),
    Task(
      name: 'Mediter',
      isDone: true,
    ),
    Task(
      name: 'coder',
      isDone: true,
    ),
    Task(
      name: 'codeeer',
      isDone: true,
    ),
  ];

  dynamic get getAllTask {
    return _tasks;
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(task) {
    Task newTask = Task(name: task);

    _tasks.add(newTask);
    notifyListeners();
  }

  void deleteTask(Task task) {
    this._tasks.remove(task);
    notifyListeners();
  }

  void checkTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}

final taskProvider = ChangeNotifierProvider((ref) => TaskNotif());

// final  addTask = StateProvider<List<Task>>((ref){

//   tasks.add()

// })

// class TodoService extends ChangeNotifier {
//   List<Task> get getAllTodos {
//     return tasks;
//   }
// }

// final dataProvider = Provider<dynamic>((ref) => TodoService());




// final getAllTodos =
//     ChangeNotifierProvider<DataProvider>((ref) => DataProvider());

// class DataProvider with ChangeNotifier {
//   List<Task> tasks = [
//     Task(
//       name: 'Prier',
//       isDone: true,
//     ),
//     Task(
//       name: 'Mediter',
//       isDone: true,
//     ),
//     Task(
//       name: 'coder',
//       isDone: true,
//     ),
//     Task(
//       name: 'coder',
//       isDone: true,
//     ),
//   ];
// }

// List<Task> tasks = [
//   Task(
//     name: 'Prier',
//     isDone: true,
//   ),
//   Task(
//     name: 'Mediter',
//     isDone: true,
//   ),
//   Task(
//     name: 'coder',
//     isDone: true,
//   ),
//   Task(
//     name: 'chanter',
//     isDone: true,
//   ),
// ];

// List<Task> fetchTodos() {
//   return tasks;
// }






// class DataProvider with ChangeNotifier {
//   List<Task> _tasks = [
//     Task(
//       name: 'Prier',
//       isDone: true,
//     ),
//     Task(
//       name: 'Mediter',
//       isDone: true,
//     ),
//     Task(
//       name: 'coder',
//       isDone: true,
//     ),
//   ];

//   dynamic get getAllTasks {
//     return this._tasks;
//   }

//   int get taskCount {
//     return _tasks.length;
//   }

//   void addTask(String task) {
//     Task newTask = Task(name: task);

//     this._tasks.add(newTask);
//     notifyListeners();

//     print(_tasks);
//   }

//   void deleteTask(Task task) {
//     this._tasks.remove(task);
//     notifyListeners();
//   }

//   void checkTask(Task task) {
//     task.toggleDone();
//     notifyListeners();
//   }
// }
