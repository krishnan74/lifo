import 'package:flutter/material.dart';
import 'package:lifo/model/chatmodel.dart';
import 'package:lifo/src/customUI/chat1.dart';

class Chat_page extends StatefulWidget {
  const Chat_page({Key? key}) : super(key: key);

  @override
  State<Chat_page> createState() => _Chat_page();
}

class _Chat_page extends State<Chat_page> with SingleTickerProviderStateMixin {
  List<chatmodel> chats = [
    chatmodel("Patrick", "assets/person.svg", false, "15:01",
        "Who you callin' PINHEAD?"),
    chatmodel("SpongeBob", "assets/person.svg", false, "16:32",
        "I'm ready! I'm ready!"),
    chatmodel("Squidward", "assets/person.svg", false, "18:49", "Whatever."),
    
  ];
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 61, 0, 86),
          title: Text("Chat"),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            PopupMenuButton<String>(onSelected: (value) {
              print(value);
            }, itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("New Group"),
                  value: "New Group",
                ),
                PopupMenuItem(
                  child: Text("Starred Messages"),
                  value: "Starred Messages",
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  value: "Settings",
                ),
              ];
            })
          ],
          bottom: TabBar(controller: _controller, tabs: [
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "GROUPS",
            )
          ]),
        ),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) => chat1(
            chat_model: chats[index],
          ),
        ));
  }
}
