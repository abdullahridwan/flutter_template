import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:promptdiary/constants.dart';

import '../components/settings_row.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isDarkMode = false;
  bool _isSignedOut = false;

  _handleDarkMode(bool darkModeValue) {
    setState(() {
      _isDarkMode = darkModeValue;
    });
  }

  Future<void> _handleSignOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacementNamed(this.context, "/auth");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
              SizedBox(height: 10),
              CupertinoSection(
                title: "Basics",
                variables: [
                  {
                    "state variable": _isDarkMode,
                    "widget": SettingsRow(
                      color: Colors.blue.shade900,
                      icon: CupertinoIcons.moon_fill,
                      title: "Dark Mode",
                      description: "Turn Dark Mode on and off",
                      endWidget: CupertinoSwitch(
                        value: _isDarkMode,
                        onChanged: _handleDarkMode,
                      ),
                    ),
                  },
                  {
                    "state variable": null,
                    "widget": SettingsRow(
                        color: Colors.red.shade400,
                        icon: CupertinoIcons.exclamationmark_circle_fill,
                        title: "Version",
                        description: "Current App Version",
                        endWidget: Text("0.0.1")),
                  },
                ],
              ),
              CupertinoSection(
                title: "",
                variables: [
                  {
                    "state variable": null,
                    "widget": Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: _handleSignOut,
                        child: Text(
                          "Sign Out",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  },
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CupertinoSection extends StatelessWidget {
  const CupertinoSection({
    Key? key,
    required String title,
    required List<Map<String, dynamic>> variables,
  })  : _title = title,
        _variables = variables,
        super(key: key);

  final String _title;
  final List<Map<String, dynamic>> _variables;

  @override
  Widget build(BuildContext context) {
    List<Widget> rows = [];
    _variables.forEach((element) {
      rows.add(element['widget']);
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
          child: Text(
            _title,
            style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: Theme.of(context).textTheme.labelLarge!.fontSize),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade200,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: rows,
          ),
        ),
      ],
    );
  }
}
