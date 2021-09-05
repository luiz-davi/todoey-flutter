// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final taskMessegeController = TextEditingController();

  late String task = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Adicione uma nova Tarefa',
              style: TextStyle(
                fontSize: 25,
                color: Colors.lightBlueAccent,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: taskMessegeController,
                    autofocus: true,
                    onChanged: (value) {
                      task = value;
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Escreva sua nova tarefa...",
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      taskMessegeController.clear();
                    },
                    child: Text(
                      "Adicionar",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
