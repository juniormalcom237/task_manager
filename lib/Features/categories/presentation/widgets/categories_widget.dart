import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 10,
        color: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black12,
                child: Icon(
                  Icons.data_saver_on_sharp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                "Goal",
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                "0/10",
                style: Theme.of(context).textTheme.caption,
              )
            ],
          ),
        ),
      ),
    );
  }
}
