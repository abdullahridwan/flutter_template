import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                "Settings",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline3!.fontSize,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.moon_fill,
                      color: Colors.blue.shade900,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dark Mode",
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .fontSize,
                            ),
                          ),
                          Text(
                            "Description",
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .fontSize,
                            ),
                          ),
                        ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
