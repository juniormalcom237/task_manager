import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);
  static const url = "/addTask";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222222),
      appBar: AppBar(
        elevation: 0,
        leading: Icon(CupertinoIcons.xmark),
        title: Text("Create new task"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // children: [CalendarTimeline()],
            children: [
              SizedBox(height: 8),
              CalendarTimeline(
                activeBackgroundDayColor: Color(0xff424242),
                dayColor: Colors.white,
                monthColor: Colors.grey,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2039),
                onDateSelected: (c) {},
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                "Schedule",
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Task Name",
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                    color: Color(0xff424242),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Name ", border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Description",
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                    color: Color(0xff424242),
                    borderRadius: BorderRadius.circular(15)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Description", border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text("Start Date"),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: Color(0xff424242),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.clock,
                                color: Colors.purpleAccent,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text("06:00 PM"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Text("End Date"),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: Color(0xff424242),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.clock,
                                color: Colors.purpleAccent,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text("09:00 PM"),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Text(
                "Priority",
                style: Theme.of(context).textTheme.caption,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 4),
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                        color: Color(0xff5BC0F8),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("High"),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 4),
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                        color: Color(0xff6D67E4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Middle"),
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 4),
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                        color: Color(0xffDEBACE),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Low"),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Choose an Emojie",
                style: Theme.of(context).textTheme.caption,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffFF597B),
                      child: Text("🎯"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff5BC0F8),
                      child: Text("🚀"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff453C67),
                      child: Text("🧠"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff242424),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  "Get alert for this Task",
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 0),
                horizontalTitleGap: 0,
                minVerticalPadding: 10,

                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                // dense: true,
                // trailing: Checkbox(
                //   value: true,
                //   onChanged: (v){},
                // ),
                trailing: Switch.adaptive(value: true, onChanged: (v) {}),
              ),
              SizedBox(
                height: 55,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Create a task"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
