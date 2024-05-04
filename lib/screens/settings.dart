import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingstState();
}

class _SettingstState extends State<Settings> {
  String title = 'Settings';
  String item1 = 'Give Feedback';
  String item2 = 'User Policies';
  String item3 = 'About Us';
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: PopupMenuButton(
        itemBuilder: (context) => [
           PopupMenuItem(
            child: Text(item1),
            value: item1 ,
            ),
            PopupMenuItem(
            child: Text(item2),
            value: item2 ,
            ),
            PopupMenuItem(
            child: Text(item3),
            value: item3 ,
            ),
        ],
        ),
    );
  }
}