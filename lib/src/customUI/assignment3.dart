import 'package:flutter/material.dart';

class assignment3 extends StatelessWidget {
  const assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Column(children: [
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: Icon(Icons.assignment_late_rounded),
            title: Text(
              "Course on Machine Learning",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            subtitle: Text(
              "10 days left for you to complete the course",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            ),
            //TextButton(onPressed: () {}, child: Text('Done'))

            trailing: Text(
              "Until 30th March,2023",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ]));
  }
}
