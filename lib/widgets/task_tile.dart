import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy avocados',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkboxState,
//        onChanged: toggleCheckboxState,
      );
    );
  }
}


//(bool checkboxState) {
//setState(() {
//isChecked = checkboxState;
//});
//},