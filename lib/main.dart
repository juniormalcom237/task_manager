import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_management_flutter/Features/home/presentation/screen/home.dart';
import 'package:task_management_flutter/Features/onboarding/Presentation/Screen/starting_screen.dart';
import 'package:task_management_flutter/utils/taskManager_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) => runApp(const MyApp()));
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black, systemNavigationBarColor: Colors.black));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData theme = TaskManagerTheme.dark();
    return MaterialApp(
      title: 'Flutter Demos it ok Salam Wk ',
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const StartingScreen(),
      routes: {
        HomeScreen.url: (ctx) => const HomeScreen(),
      },
    );
  }
}
