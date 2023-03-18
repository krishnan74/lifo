import 'package:flutter/material.dart';
import 'package:lifo/model/chatmodel.dart';
import 'package:lifo/src/customUI/individualpage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../model/chatmodel.dart';

class chat1 extends StatelessWidget {
  const chat1({Key? key, required this.chat_model}) : super(key: key);
  final chatmodel chat_model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => individualpage(
                        chat_model: chat_model,
                      )));
        },
        child: Column(children: [
          ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: SvgPicture.asset(
                    chat_model.isGroup
                        ? 'assets/groups.svg'
                        : 'assets/person.svg',
                    color: Color.fromARGB(255, 255, 255, 255),
                    height: 36,
                    width: 36),
                backgroundColor: Colors.blueGrey,
              ),
              title: Text(
                chat_model.name,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    chat_model.recentmessage,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              trailing: Text(
                chat_model.time,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {}),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ]));
  }
}
