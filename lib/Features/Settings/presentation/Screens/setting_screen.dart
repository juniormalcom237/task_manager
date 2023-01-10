import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222222),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Settings",
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: 15,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color(0xffFFE5F1),
                    radius: 30,
                    child: Image.asset("assets/images/Avatar-34.png"),
                  ),
                  horizontalTitleGap: 6,
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    "Tasse Junior",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  subtitle: Text("FullStack Developer"),
                ),
                SizedBox(
                  height: 15,
                ),
                ListTile(
                  horizontalTitleGap: 13,
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    "Edit Profile",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff424242),
                    child: Icon(
                      Icons.edit,
                      size: 22,
                    ),
                  ),
                  trailing: Icon(
                    CupertinoIcons.right_chevron,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  horizontalTitleGap: 13,
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    "Achievement",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff424242),
                    child: Icon(
                      Icons.center_focus_strong_outlined,
                      size: 22,
                    ),
                  ),
                  trailing: Icon(
                    CupertinoIcons.right_chevron,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  horizontalTitleGap: 13,
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    "Favorite",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff424242),
                    child: Icon(
                      CupertinoIcons.heart,
                      size: 22,
                    ),
                  ),
                  trailing: Icon(
                    CupertinoIcons.right_chevron,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  color: Colors.black12,
                  width: MediaQuery.of(context).size.width * 1,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    "Preferences",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  horizontalTitleGap: 13,
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    "Languages",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff424242),
                    child: Icon(
                      Icons.language,
                      size: 22,
                    ),
                  ),
                  trailing: Icon(
                    CupertinoIcons.right_chevron,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  horizontalTitleGap: 13,
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    "Dark Mode",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Color(0xff424242),
                    child: Icon(
                      Icons.dark_mode_outlined,
                      size: 22,
                    ),
                  ),
                  trailing: Switch.adaptive(value: true, onChanged: (v) {}),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                    horizontalTitleGap: 13,
                    contentPadding: EdgeInsets.all(0),
                    title: Text(
                      "Notification",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Color(0xff424242),
                      child: Icon(
                        Icons.edit,
                        size: 22,
                      ),
                    ),
                    trailing: Switch.adaptive(value: true, onChanged: (v) {})),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
