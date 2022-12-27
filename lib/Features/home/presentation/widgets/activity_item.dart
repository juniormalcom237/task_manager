import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter/material.dart';

class Activity_items extends StatelessWidget {
  const Activity_items(
      {Key? key,
      this.title,
      this.subtitle,
      this.date,
      this.percentage,
      this.backgroundImage})
      : super(key: key);
  final String? title;
  final String? subtitle;
  final String? date;
  final String? percentage;
  final String? backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.4,
      padding: EdgeInsets.only(left: 15, right: 15, top: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage("$backgroundImage"), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            "Designer",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "MONEEQ WebDesign",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Sat, 22 Nov 2022",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          LinearPercentIndicator(
            padding: EdgeInsets.all(0),
            width: 100.0,
            lineHeight: 3.0,
            percent: 0.5,
            trailing: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "50%",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
            barRadius: Radius.circular(20),
            backgroundColor: Colors.grey,
            progressColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
