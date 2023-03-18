import 'package:flutter/material.dart';
import 'package:lifo/src/customUI/assignment2.dart';
import 'package:lifo/src/customUI/assignment3.dart';

import '../customUI/assignment1.dart';

class Remainder_page extends StatelessWidget {
  const Remainder_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Remainders"),
        backgroundColor: Color.fromARGB(255, 61, 0, 86),
        actions: [
          IconButton(icon: Icon(Icons.add_task_rounded), onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          assignment1(),
          assignment2(),
          assignment3(),
        ],
      ),
    );
  }
}
