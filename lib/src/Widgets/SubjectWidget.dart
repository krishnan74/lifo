import 'package:flutter/material.dart';

class SubjectWidget extends StatelessWidget{
  const SubjectWidget({super.key, required this.subject_name, required this.subject_code, required this.subject_semester});

  final String subject_name;
  final String subject_code;
  final String subject_semester;

  @override

  Widget build(BuildContext context){
    return Container(
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(color: Color.fromRGBO(50, 50, 50, 1), width: 2.0),
        color: Color.fromRGBO(34,34,44,1)
      ),
      width: 10,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(subject_name, style: TextStyle(fontSize: 25, color: Colors.white, fontFamily: "Poppins", fontWeight: FontWeight.bold)),
          SizedBox(height: 15),
          Text(subject_code, style: TextStyle(fontSize: 15, color: Colors.white60, fontFamily: "Poppins")),
          Text(subject_semester, style: TextStyle(fontSize: 15, color: Colors.white60,fontFamily: "Poppins"))
        ],
      ),
    );
  }

}