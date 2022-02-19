import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/state_management.dart';

import '../providers/state.dart';

import './Tasks_title.dart';

import '../models/Task.dart';

class TaskList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskNotifier = ref.watch(taskProvider);
    // print(tasks);
    // return
    // Consumer<DataProvider>(
    //   builder: (context, dataProvider, child) {
    return ListView.builder(
      itemCount: taskNotifier.getAllTask.length, //dataProvider
      //.taskCount, //dataProvider.tasks.length, //Provider.of<DataProvider>(context).tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onLongPress: () {
            // dataProvider.deleteTask(dataProvider.getAllTasks[index]);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Tâches supprimer"),
              backgroundColor: Colors.green[400],
              duration: Duration(seconds: 1),
            ));
          },
          child: TaskTitle(
            '${taskNotifier.getAllTask[index].name}', //dataProvider.getAllTasks[index].name, //Provider.of<DataProvider>(context).tasks[index].name, //tasks[index].name,
            //isChecked: tasks[index]
            //.isDone, //dataProvider.getAllTasks[index].isDone, //Provider.of<DataProvider>(context).tasks[index].isDone,
            // checkBoxCallback: (checkBoxState) {
            //   dataProvider.checkTask(dataProvider.getAllTasks[index]);
            // }
          ),
        );
      },
    );
    //   },
    // );
  }
}

// Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         TaskTitle(),
//         TaskTitle(),
//         TaskTitle(),
//       ],
//     );
//   }
