import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task_management_flutter/Features/home/presentation/screen/button_text.dart';
import 'package:task_management_flutter/Features/home/presentation/widgets/activity_item.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void incrementState() {
    setState(() {
      index = index + 1;
    });
  }

  ///It doesn't change
  int index = 0;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff222222),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 5, right: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 80,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListTile(
                              horizontalTitleGap: 0,
                              minLeadingWidth: 0,
                              minVerticalPadding: 0,
                              contentPadding: EdgeInsets.all(0),
                              leading: CircleAvatar(
                                backgroundColor: Color(0xffFFE5F1),
                                radius: 40,
                                child: Image.asset(
                                  "assets/images/Avatar-34.png",
                                  width: 70,
                                ),
                              ),
                              title: Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Text(
                                  "Welcome Back!",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                              ),
                              subtitle: Text(
                                "Mr.Tasse Junior",
                                style: TextStyle(color: Colors.grey),
                              ),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications_none_rounded,
                                  color: Colors.white,
                                  size: 27,
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 60,
                    child: ListTile(
                      leading: Text(
                        "Recent Activity",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text(
                          "See More",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: media.height > 884 ? 270 : 230,
                    margin: EdgeInsets.only(left: 10, right: 5),
                    child: StaggeredGrid.count(
                      crossAxisCount: 4,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 4,
                      children: [
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 0.9,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0.0, right: 10, top: 1, bottom: 3),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff424242),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 0, right: 10, top: 0),
                                  child: ListTile(
                                    horizontalTitleGap: 0,
                                    minLeadingWidth: 0,
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text(
                                      "Task Project",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                    subtitle: Text(
                                      "20/17",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    trailing: CircularPercentIndicator(
                                      radius: media.width * 0.05,
                                      lineWidth: media.width * 0.008,
                                      percent: 0.30,
                                      center: new Text(
                                        "30%",
                                        style: TextStyle(
                                            color: Colors.lightGreen,
                                            fontSize: 12),
                                      ),
                                      progressColor: Colors.lightGreen,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 1.4,
                          child: Activity_items(
                            backgroundImage: "assets/images/bg13.png",
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 1.84,
                          child: Activity_items(
                            backgroundImage: "assets/images/bg6.png",
                          ),
                        ),
                        StaggeredGridTile.count(
                            crossAxisCellCount: 2,
                            mainAxisCellCount: 1.33,
                            child: Activity_items(
                              backgroundImage: "assets/images/bg14.png",
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    child: ListTile(
                      leading: Text(
                        "Today Task!",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        child: Text(
                          "See More",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 5, bottom: 10),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff424242)),
                    child: ListTile(
                      // horizontalTitleGap: 90,
                      // minLeadingWidth: 10,
                      title: Text(
                        "High Fidelity!",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "MOONEQ Web Desiggn",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                      trailing: Checkbox(
                        fillColor: MaterialStateColor.resolveWith((states) {
                          return Colors.white;
                        }),
                        checkColor: Colors.black,
                        value: true,
                        onChanged: (v) {},
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 5, bottom: 10),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff424242)),
                    child: ListTile(
                      // horizontalTitleGap: 90,
                      // minLeadingWidth: 10,
                      title: Text(
                        "Wireframe",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Funio web Design",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ),
                      trailing: Checkbox(
                        fillColor: MaterialStateColor.resolveWith((states) {
                          return Colors.white;
                        }),
                        checkColor: Colors.black,
                        value: true,
                        onChanged: (v) {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
