import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxCallBack(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Hello",
        style: TextStyle(
          color: Colors.black,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskWidget(
        checkBoxState: isChecked,
        changeState: checkBoxCallBack,
      ),
    );
  }
}

class TaskWidget extends StatelessWidget {
  final bool checkBoxState;
  final Function changeState;

  const TaskWidget({
    Key? key,
    required this.checkBoxState,
    required this.changeState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      onChanged: (checkBoxState) => changeState(checkBoxState),
      value: checkBoxState,
    );
  }
}
