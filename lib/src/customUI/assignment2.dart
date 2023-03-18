import 'package:flutter/material.dart';

class assignment2 extends StatelessWidget {
  const assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Column(children: [
          ListTile(
            contentPadding: EdgeInsets.all(20),
            leading: Icon(Icons.assignment_late_rounded),
            title: Text(
              "AIML",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            subtitle: Text(
              "Journal Assignment - 2",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            ),
            //TextButton(onPressed: () {}, child: Text('Done'))

            trailing: Text(
              "Due on 29th March,2023",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 45, 160, 3)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          )
        ]));
  }
}
