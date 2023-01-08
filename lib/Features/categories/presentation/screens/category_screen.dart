import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);
  static String url = "/categoryScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222222),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff222222),
        title: Text("Goal"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 5),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: Text("favorites"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 5),
                        // backgroundColor: Colors.grey,
                        foregroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: Text("Recents"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 0, bottom: 0),
                        // backgroundColor: Colors.blue,
                        foregroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: Text("All"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Container(
                  padding: EdgeInsets.only(bottom: 10),
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Color(0xff424242),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(CupertinoIcons.ant),
                        ),
                        title: Text("Unity Dashboards"),
                        subtitle: Text("Design"),
                        contentPadding: EdgeInsets.only(left: 10, right: 10),
                        minVerticalPadding: 2,
                        trailing: Chip(
                          label: Text("10/10"),
                          backgroundColor: Colors.deepPurple,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Progress",
                              style: Theme.of(context).textTheme.caption,
                            ),
                            Text(
                              "70%",
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      LinearPercentIndicator(
                        percent: 0.7,
                        backgroundColor: Colors.grey,
                        progressColor: Colors.deepPurple,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Color(0xff424242),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(CupertinoIcons.ant),
                      ),
                      title: Text("Unity Dashboard"),
                      subtitle: Text("Design"),
                      contentPadding: EdgeInsets.only(left: 10, right: 10),
                      minVerticalPadding: 2,
                      trailing: Chip(
                        label: Text("8/10"),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Progress",
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Text(
                            "80%",
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    LinearPercentIndicator(
                      percent: 0.8,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.deepPurple,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Color(0xff424242),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(CupertinoIcons.ant),
                      ),
                      title: Text("Unity Dashboard"),
                      subtitle: Text("Design"),
                      contentPadding: EdgeInsets.only(left: 10, right: 10),
                      minVerticalPadding: 2,
                      trailing: Chip(
                        label: Text("8/10"),
                        backgroundColor: Colors.pinkAccent,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Progress",
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Text(
                            "40%",
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    LinearPercentIndicator(
                      percent: 0.4,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.deepPurple,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Color(0xff424242),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(CupertinoIcons.ant),
                      ),
                      title: Text("Unity Dashboard"),
                      subtitle: Text("Design"),
                      contentPadding: EdgeInsets.only(left: 10, right: 10),
                      minVerticalPadding: 2,
                      trailing: Chip(
                        label: Text("8/10"),
                        backgroundColor: Colors.blueAccent,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Progress",
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Text(
                            "20%",
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    LinearPercentIndicator(
                      percent: 0.2,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.deepPurple,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Color(0xff424242),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(CupertinoIcons.ant),
                      ),
                      title: Text("Unity Dashboard"),
                      subtitle: Text("Design"),
                      contentPadding: EdgeInsets.only(left: 10, right: 10),
                      minVerticalPadding: 2,
                      trailing: Chip(
                        label: Text("8/10"),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Progress",
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Text(
                            "80%",
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    LinearPercentIndicator(
                      percent: 0.8,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.deepPurple,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Color(0xff424242),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(CupertinoIcons.ant),
                      ),
                      title: Text("Unity Dashboard"),
                      subtitle: Text("Design"),
                      contentPadding: EdgeInsets.only(left: 10, right: 10),
                      minVerticalPadding: 2,
                      trailing: Chip(
                        label: Text("8/10"),
                        backgroundColor: Colors.pinkAccent,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Progress",
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Text(
                            "40%",
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    LinearPercentIndicator(
                      percent: 0.4,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.deepPurple,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
