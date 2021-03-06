// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/widgets/add_task_screen.dart';
import 'package:todoey_flutter/screens/widgets/task_list_widget.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60, left: 30, bottom: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 25),
                Text(
                  "Todoey",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "12 Tarefas",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => AddTaskScreen(),
        ),
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
