import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:task_management_flutter/Features/home/presentation/screen/add_task_screen.dart';
import 'package:task_management_flutter/Features/home/presentation/screen/main_screen.dart';
import 'package:task_management_flutter/Features/home/presentation/screen/search_screeen.dart';
import 'package:task_management_flutter/Features/home/presentation/screen/setting_screen.dart';
import 'package:task_management_flutter/Features/home/presentation/widgets/activity_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String url = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> _screens = [
    MainScreen(),
    SearchScreen(),
    AddTaskScreen(),
    SettingScreen()
  ];

  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff282A3A),
      backgroundColor: Color(0xff222222),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff222222),
        onTap: (selectedInd) {
          setState(() {
            navIndex = selectedInd;
          });
        },
        showSelectedLabels: false,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: Colors.grey,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.grey,
              ),
              label: "add"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                color: Colors.grey,
              ),
              label: "setting"),
        ],
      ),

      body: _screens[navIndex],
    );
  }
}
