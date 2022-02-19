import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:provider/provider.dart';
import '../constants.dart';
// import 'package:todoapp/providers/data_provider.dart';
import '../screens/addTask_screen.dart';

import '../providers/state.dart';

import '../widgets/Tasks_list.dart';

import '../models/Task.dart';

class TasksScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskNotifier = ref.watch(taskProvider);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => AddTask(),
            backgroundColor: Colors.transparent,
            isDismissible: false,
          );
        },
        child: Icon(Icons.add),
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // CircleAvatar(
                //   child: Icon(
                //     Icons.list,
                //     size: 30.0,
                //     color: kPrimaryColor,
                //   ),
                //   backgroundColor: Colors.white,
                //   radius: 30.0,
                // ),
                Container(
                  // height: 20.0,
                  padding: EdgeInsets.all(7.0),
                  color: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${taskNotifier.taskCount} Tâches', //'${Provider.of<DataProvider>(context).taskCount} Tâches', //'${Provider.of<DataProvider>(context).tasks.length} Tâches',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 100.0,
              // color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(20.0),
                //   topRight: Radius.circular(20.0),
                // ),
              ),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                    top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: TaskList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
