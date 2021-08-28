import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        "Hello",
        style: TextStyle(color: Colors.black),
      ),
      trailing: Checkbox(
        onChanged: null,
        value: false,
      ),
    );
  }
}
