import "package:flutter/material.dart";
import "package:todoey/components/task_tile.dart";
import "package:todoey/models/task.dart";


class TaskList extends StatelessWidget {
  const TaskList({
    super.key, required this.tasks,
  });
  final List<Task> tasks;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: tasks[index].isDone, taskTitle: tasks[index].name);
      },
      itemCount: tasks.length,
    );
  }
}
