import "package:flutter/material.dart";

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key, required this.isChecked, required this.taskTitle,
  });

  final bool isChecked;
  final String taskTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
            isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: (value){

          }
      ),
    );
}

  }



