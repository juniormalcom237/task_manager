import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:task_management_flutter/Features/categories/presentation/screens/category_screen.dart';

import '../../../home/presentation/widgets/activity_item.dart';
import '../widgets/categories_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff222222),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    "CATEGORIES",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      final action = CupertinoActionSheet(
                        title: Text(
                          "Create a category ?",
                          style: TextStyle(fontSize: 14),
                        ),
                        message: Text(
                          "Please chooose an option",
                          style: TextStyle(fontSize: 12.0),
                        ),
                        actions: <Widget>[
                          CupertinoActionSheetAction(
                            child: Text(
                              "Add a category",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            isDefaultAction: true,
                            onPressed: () {
                              print("Action 1 is been clicked");
                              Navigator.of(context).pop();
                            },
                          ),
                          CupertinoActionSheetAction(
                            child: Text(
                              "add a task",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                            isDefaultAction: true,
                            onPressed: () {
                              print("Action 1 is been clicked");
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          child: Text("Cancel"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      );

                      showCupertinoModalPopup(
                          context: context, builder: (context) => action);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Categories_Container(media: media),
                ListTile(
                  title: Text(
                    "Active Task",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  trailing: Text(
                    "See More",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
                Category_item(),
                Category_item(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Category_item extends StatelessWidget {
  const Category_item({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 20,
      ),
      margin: EdgeInsets.only(right: 20, left: 20, bottom: 15),
      decoration: BoxDecoration(
        color: Color(0xff424242),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              "Robota Articles",
              style: Theme.of(context).textTheme.headline3,
            ),
            leading: Container(
              width: 35,
              height: 35,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "🤖",
                style: TextStyle(fontSize: 25),
              ),
            ),
            minVerticalPadding: 0,
            horizontalTitleGap: 3,
            // minLeadingWidth: ,
            subtitle: Text(
              "Deadline date less than 2 Weeks",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Priority",
                  style: TextStyle(fontSize: 12),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17),
            child: Text(
              "By making a to do list, you will know the priorities you want to work on, so that you will be more structured in doina vour work.",
              // style: Theme.of(context).textTheme.caption,
              maxLines: 2,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          ListTile(
            minVerticalPadding: 0,
            title: Text(
              "Progress",
              style: Theme.of(context).textTheme.caption,
            ),
            trailing: Text(
              "14%",
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          LinearPercentIndicator(
            padding: EdgeInsets.only(left: 17, right: 17),
            width: MediaQuery.of(context).size.width * 1 - 40,
            lineHeight: 4.0,
            percent: 0.7,
            barRadius: Radius.circular(20),
            backgroundColor: Colors.grey,
            progressColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Categories_Container extends StatelessWidget {
  const Categories_Container({
    Key? key,
    required this.media,
  }) : super(key: key);

  final Size media;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: media.height > 884 ? 270 : 250,
      margin: EdgeInsets.only(left: 10, right: 5),
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1.4,
              child: CategoriesWidget()),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: media.height > 884 ? 1.2 : 1.36,
              child: CategoriesWidget()),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1.4,
              child: CategoriesWidget()),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: media.height > 884 ? 1.2 : 1.36,
              child: CategoriesWidget()),
        ],
      ),
    );
  }
}
