import 'package:flutter/material.dart';

class assignmentWidget extends StatelessWidget {
  const assignmentWidget({super.key, required this.title, required this.description, required this.deadline});

  final String title;
  final String description;
  final DateTime deadline;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(35, 35, 35, 1),
      child: Container(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.pending_actions , color: Colors.red[800], size: 30,),
              Container(
                width: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white, fontFamily: "Poppins")),
                    Text(description, style: TextStyle(fontWeight: FontWeight.w100, fontSize: 15, color: Colors.white, fontFamily: "Poppins"))
                  ],
                ),
              ),
              Text(deadline.toString().substring(5, 19), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white, fontFamily: "Poppins"))
            ],
          ),
      padding: EdgeInsets.symmetric(vertical: 10),
      )
        );
  }
}
