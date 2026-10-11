import 'package:flutter/material.dart';
import './subject_page.dart';
import '../Widgets/SubjectWidget.dart';

class Library_page extends StatelessWidget {
  Library_page({Key? key}) : super(key: key);

  final List<Map<String, String>> subjectList = [
    {"name": "PSPP", "code": "CS101", "sem": "Semester 1"},
    {"name": "ES & IOT", "code": "CS202", "sem": "Semester 2"},
    {"name": "DBMS", "code": "CS202", "sem": "Semester 2"},
    {"name": "FSWD", "code": "CS202", "sem": "Semester 2"},
    {"name": "DRRM", "code": "CS202", "sem": "Semester 2"},
    {"name": "OS", "code": "CS202", "sem": "Semester 2"},
    {"name": "Matrices", "code": "CS202", "sem": "Semester 2"},
    {"name": "TOC", "code": "CS202", "sem": "Semester 2"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(5, 5, 5, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(5, 5, 5, 1),
        title: Text('Subjects',
        style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w100,
            fontSize: 23,
            color: Colors.white
        ),),

      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search), color: Colors.white)],
      ),
      body: GridView.builder(
        padding: EdgeInsets.only(left: 20, right: 20, top: 40 ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 40,
          crossAxisSpacing: 40,
        ),
        itemCount: subjectList.length,
        itemBuilder: (context, index) {
          final subject = subjectList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Subject_page(subject_code: subject["code"] ?? ""),
                ),
              );
            },
            child: SubjectWidget(
              subject_name: subject["name"] ?? "",
              subject_code: subject["code"] ?? "",
              subject_semester: subject["sem"] ?? "",
            ),
          );
        },
      ),
    );
  }
}
