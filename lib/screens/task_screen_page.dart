import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 30),
        child: Column(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35,
              child: Icon(
                Icons.list,
                size: 35,
                color: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(height: 10),
            Text("Todoey"),
          ],
        ),
      ),
    );
  }
}
