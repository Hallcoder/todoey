import "package:flutter/material.dart";
import "package:todoey/components/task_tile.dart";

import "../constants.dart";

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const TaskTile();
      },
      itemCount: todos.length,
    );
  }
}
