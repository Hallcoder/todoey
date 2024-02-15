import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:todoey/main.dart";
import "package:todoey/models/task.dart";

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key})
      : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Data state = Provider.of<Data>(context);
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff757575),
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Add a todo",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 40.0,
              ),
            ),
            TextFormField(
              controller: _controller,
            ),
            const SizedBox(
              height: 15.0,
            ),
            GestureDetector(
              onTap: () {
                state.addTask(Task(name: _controller.text));
                Navigator.pop(context);
              },
              child: Container(
                decoration: const BoxDecoration(color: Colors.blueAccent),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    !state.isLoading ? "ADD" : "Loading...",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
