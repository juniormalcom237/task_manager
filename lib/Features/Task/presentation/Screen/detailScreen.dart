import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({Key? key}) : super(key: key);
  static const url = "/taskdetail";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222222),
      appBar: AppBar(
        backgroundColor: Color(0xff222222),
        leading: Icon(CupertinoIcons.arrow_left),
        elevation: 0,
        title: Text(
          "Task Detail",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(CupertinoIcons.trash),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(2),
                horizontalTitleGap: 0,
                minLeadingWidth: 2,
                minVerticalPadding: 0,
                title: Text(
                  "Finance DashBoard Design",
                  style: Theme.of(context).textTheme.headline3,
                ),
                leading: Checkbox(
                  value: false,
                  onChanged: (v) {},
                ),
              ),
              ListTile(
                // contentPadding: EdgeInsets.all(2),
                horizontalTitleGap: 0,
                minLeadingWidth: 2,
                minVerticalPadding: 0,
                title: Text(
                  "Due date",
                  style: Theme.of(context).textTheme.caption,
                ),
                subtitle: Text(
                  "Monday, 8th November 2023",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              ListTile(
                // contentPadding: EdgeInsets.all(2),
                horizontalTitleGap: 0,
                minLeadingWidth: 2,
                minVerticalPadding: 0,
                title: Text(
                  "Description",
                  style: Theme.of(context).textTheme.caption,
                ),
                subtitle: Text(
                  "Design a simple dashboard with clean layout and colors based on the client's brand guidelines.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              // LinearPercentIndicator(
              //   padding: EdgeInsets.only(left: 18, right: 20),
              //   progressColor: Colors.blueAccent,
              //   percent: 0.7,
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Subtask",
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  ListTile(
                    // dense: true,
                    visualDensity: VisualDensity.compact,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    minLeadingWidth: 10,
                    horizontalTitleGap: 0,
                    // minVerticalPadding: 0,
                    title: Text(
                      "Wireframe",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        CupertinoIcons.line_horizontal_3,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    leading: Checkbox(
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      value: true,
                      onChanged: (v) {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(),
                  )
                ],
              ),
              Column(
                children: [
                  ListTile(
                    // dense: true,
                    visualDensity: VisualDensity.compact,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    minLeadingWidth: 10,
                    horizontalTitleGap: 0,
                    // minVerticalPadding: 0,
                    title: Text(
                      "Wireframe Dashboard",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        CupertinoIcons.line_horizontal_3,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    leading: Checkbox(
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      value: true,
                      onChanged: (v) {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(),
                  )
                ],
              ),
              Column(
                children: [
                  ListTile(
                    // dense: true,
                    visualDensity: VisualDensity.compact,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    minLeadingWidth: 10,
                    horizontalTitleGap: 0,
                    // minVerticalPadding: 0,
                    title: Text(
                      "Create Home Page",
                      style: TextStyle(
                          // decoration: TextDecoration.lineThrough,
                          color: Colors.white),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        CupertinoIcons.line_horizontal_3,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    leading: Checkbox(
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      value: false,
                      onChanged: (v) {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(),
                  )
                ],
              ),
              Column(
                children: [
                  ListTile(
                    // dense: true,
                    visualDensity: VisualDensity.compact,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    minLeadingWidth: 10,
                    horizontalTitleGap: 0,
                    // minVerticalPadding: 0,
                    title: Text(
                      "Create Detail Page",
                      style: TextStyle(
                          // decoration: TextDecoration.lineThrough,
                          color: Colors.white),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        CupertinoIcons.line_horizontal_3,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    leading: Checkbox(
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      value: false,
                      onChanged: (v) {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(),
                  )
                ],
              ),
              ListTile(
                horizontalTitleGap: 0,
                visualDensity: VisualDensity.compact,
                contentPadding: EdgeInsets.only(left: 22),
                leading: Icon(
                  CupertinoIcons.add,
                  color: Colors.grey,
                ),
                title: Text(
                  "Add a subtask",
                  style: Theme.of(context).textTheme.caption,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
