import 'package:flutter/material.dart';
import '../customUI/assignmentWidget.dart';

class Remainder_page extends StatelessWidget {
  const Remainder_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 25, 25, 1),

      appBar: AppBar(
        title: Text("Remainders",
        ),
        actions: [
          IconButton(icon: Icon(Icons.add_task_rounded), onPressed: () {})
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        children: [
          assignmentWidget(
            title: "Task1",
            description: "Immediate task",
            deadline: DateTime(2023, 07, 23),
          ),
          assignmentWidget(
            title: "Task2",
            description: "Immediate task",
            deadline: DateTime(2023, 07, 23),
          ),
          assignmentWidget(
            title: "Task1",
            description: "Immediate task",
            deadline: DateTime(2023, 07, 23),
          ),
        ],
      ),
    );
  }
}
