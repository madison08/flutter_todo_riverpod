import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import '../constants.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/state_management.dart';

class TaskTitle extends StatelessWidget {
  // Function checkBoxCallback;

  final String titleList;
  // bool isChecked;

  TaskTitle(this.titleList); //this.isChecked = false //this.checkBoxCallback

  @override
  Widget build(BuildContext context) {
    // final List tasks = ref.watch(getAllTodos);

    return ListTile(
      title: Text(
        titleList,
        style: TextStyle(
            // decoration:
            //     isChecked ? TextDecoration.lineThrough : TextDecoration.none,
            // color: isChecked ? Colors.red : Colors.black,
            ),
      ),
      // trailing: Checkbox(
      //   value: isChecked,
      //   onChanged: checkBoxCallback,
      //   activeColor: kPrimaryColor,
      // ),
    );
  }
}

// class CheckBox extends StatelessWidget {
//   final bool isChecked;
//   final Function changeChecked;

//   CheckBox(this.isChecked, this.changeChecked);

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: isChecked,
//       onChanged: checkBoxCallback,
//     );
//   }
// }
