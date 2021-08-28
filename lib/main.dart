import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/task_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlueAccent,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.black45,
          ),
        ),
      ),
      home: TasksScreen(),
      // initialRoute: '/',
      // routes: {
      //   "/": (context) => const TasksScreen(),
      //   },
    );
  }
}
