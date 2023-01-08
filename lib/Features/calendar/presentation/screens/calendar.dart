import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222222),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    "CALENDAR",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  padding: EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff424242),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TableCalendar(
                    onDaySelected: (prevdate, date) {
                      // setState(() {
                      //   dateTime = DateFormat.yMd().format(date);
                      //   time = Schedule().getTime();
                      //   datea = date;
                      //   // time = Schedule().getTime();
                      //   print(date);
                      // });
                    },
                    calendarBuilders: CalendarBuilders(
                        defaultBuilder: (context, day, focusedDay) {
                      final text = DateFormat.d().format(day);
                      // print(text);
                      return Center(
                        child: Text(
                          text,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }, dowBuilder: (context, day) {
                      final text = DateFormat.E().format(day);

                      return Center(
                        child: Text(
                          text,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }, headerTitleBuilder: (context, day) {
                      final text = DateFormat.MMMMEEEEd().format(day);

                      return Center(
                        child: Text(
                          text,
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }),
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ListTile(
                  title: Text(
                    "List Task",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                Task_item(
                  color: Colors.blue,
                ),
                Task_item(
                  color: Colors.purpleAccent,
                ),
                Task_item(
                  color: Colors.green,
                ),
                Task_item(
                  color: Colors.cyan,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Task_item extends StatelessWidget {
  const Task_item({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xff424242),
              border: Border(left: BorderSide(color: color, width: 8))),
          child: ListTile(
            title: Text("Mobile app"),
            subtitle: Text("Research"),
            trailing: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Checkbox(
                value: true,
                activeColor: Colors.pinkAccent,
                onChanged: (v) {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}
