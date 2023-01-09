import 'package:flutter/material.dart';

class AddTaskScreens extends StatelessWidget {
  const AddTaskScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222222),
      body: Text(
        "Add Task Screen",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
