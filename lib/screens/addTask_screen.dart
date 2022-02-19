import 'package:flutter/material.dart';
import '../constants.dart';

// import 'package:provider/provider.dart';
// import 'package:todoapp/providers/data_provider.dart';
// import '../widgets/myData.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/state.dart';

TextEditingController _taskController = TextEditingController();

class AddTask extends ConsumerWidget {
//   @override
//   State<AddTask> createState() => _AddTaskState();
// }

// class _AddTaskState extends State<AddTask> {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskNotifier = ref.watch(taskProvider);
    String task;
    return Container(
      padding: EdgeInsets.all(25.0),
      width: 10.0,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(25.0),
        //   topRight: Radius.circular(25.0),
        // ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Container(
            color: Colors.grey,
            width: 60.0,
            height: 3.0,
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Ajouter une tache',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(0.0)),
                borderSide: BorderSide(
                  width: 0.5,
                  color: kPrimaryColor, //Colors.grey.withOpacity(0.3),
                ),
              ),
            ),
            controller: _taskController,
            // autofocus: true,
            onChanged: (val) {
              task = val;
            },

            // onSubmitted: () {
            // },
          ),
          SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {
              // print(task);
              ref.read(taskProvider.notifier).addTask(_taskController.text);
              print(_taskController.text);
              // Provider.of<DataProvider>(context, listen: false)
              //     .addTask(_taskController.text);
              // context.read(TaskNotif).
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Tâches Ajouter"),
                backgroundColor: Colors.green[400],
                duration: Duration(seconds: 2),
              ));
            },
            child: Container(
              width: double.infinity,
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    'Ajouter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
