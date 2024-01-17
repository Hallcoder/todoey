import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Todoey Title",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "12 texts",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: ListView.builder(itemBuilder: (context, index) {
                return CheckboxListTile(
                  value: true,
                  title: const Text("Todo 1"),
                  onChanged: (bool? value) {

                  },
                  controlAffinity: ListTileControlAffinity.platform,
                );
              },
              itemCount: todos.length,),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
