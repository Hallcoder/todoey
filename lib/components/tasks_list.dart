import "package:flutter/material.dart";
import "package:todoey/components/task_tile.dart";
import "package:todoey/models/task.dart";


class TaskList extends StatefulWidget {
  TaskList({
    super.key, required this.tasks,
  });
  List<Task> tasks;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  void updateTask(int index){
    List<Task> ts = widget.tasks;
    ts[index].isDone = !ts[index].isDone;
    setState(() {
      print("Resetting state");
      widget.tasks = ts;
    });
  }
  @override
  Widget build(BuildContext context) {
    return widget.tasks.isEmpty ? const Center(child:Text("No Todos!")): ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            updateTask(index);
          },
          child: TaskTile(
              isChecked: widget.tasks[index].isDone, taskTitle: widget.tasks[index].name),
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
