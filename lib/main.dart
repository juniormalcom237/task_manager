import 'package:flutter/material.dart';
import 'package:task_management_flutter/Features/home/presentation/screen/home.dart';
import 'package:task_management_flutter/Features/onboarding/Presentation/Screen/starting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos it ok',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartingScreen(),
      routes: {
        HomeScreen.url: (ctx) => HomeScreen(),
      },
    );
  }
}
