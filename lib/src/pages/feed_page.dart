import 'package:flutter/material.dart';

class Feed_page extends StatefulWidget {
  const Feed_page({Key? key}) : super(key: key);

  @override
  State<Feed_page> createState() => _Feed_page();
}

class _Feed_page extends State<Feed_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Raleway'),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(0, 249, 86, 4),
            title: Text('LICET FEED'),
          ),
          body: Column(
            children: [
              Container(
                height: 350.0,
                color: Colors.red,
              ),
              Row()
            ],
          ),
        ));
  }
}
