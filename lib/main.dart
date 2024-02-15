import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (BuildContext context) => Data(),
      child: const MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

class Data extends ChangeNotifier {
  List<Task> tasks = [];
  bool isLoading = false;

  void addTask(Task t) {
    isLoading = true;
    List<Task> ts = tasks;
    ts.add(t);
    tasks = ts;
    isLoading = false;
    notifyListeners();
  }
}
