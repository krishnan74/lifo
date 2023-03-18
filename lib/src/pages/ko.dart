import 'package:flutter/material.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({Key? key}) : super(key: key);

  @override
  State<Profile_page> createState() => _Profile_page();
}

class _Profile_page extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(),
        home: Scaffold(
          body: Column(
            children: [
              Container(
                child: CircleAvatar(
                    radius: 80, backgroundImage: AssetImage("images/logo.png")),
              ),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ));
  }
}
