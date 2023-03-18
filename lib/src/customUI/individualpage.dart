import 'package:emoji_picker/emoji_picker.dart';
import 'package:flutter/material.dart';

import '../../model/chatmodel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class individualpage extends StatefulWidget {
  const individualpage({Key? key, required this.chat_model}) : super(key: key);
  final chatmodel chat_model;
  @override
  State<individualpage> createState() => _individualpageState();
}

class _individualpageState extends State<individualpage> {
  bool show = false;
  FocusNode focusNode = FocusNode();
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        setState(() {
          show = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          leadingWidth: 70,
          titleSpacing: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back),
                CircleAvatar(
                  child: SvgPicture.asset(
                    widget.chat_model.isGroup
                        ? "assets/group.svg"
                        : "assets/person.svg",
                    color: Color.fromARGB(255, 255, 255, 255),
                    height: 36,
                    width: 36,
                  ),
                  backgroundColor: Colors.blueGrey,
                  radius: 20,
                ),
              ],
            ),
          ),
          title: InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.chat_model.name,
                    style:
                        TextStyle(fontSize: 18.5, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {},
            ),
            PopupMenuButton<String>(onSelected: (value) {
              print(value);
            }, itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("View Profile"),
                  value: "View Profile",
                ),
                PopupMenuItem(
                  child: Text("Media"),
                  value: "Media",
                ),
                PopupMenuItem(
                  child: Text("Block"),
                  value: "Block",
                ),
              ];
            })
          ],
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: WillPopScope(
            onWillPop: () {
              if (show) {
                setState(() {
                  show = false;
                });
              } else {
                Navigator.pop(context);
              }
              return Future.value(false);
            },
            child: Stack(
              children: [
                ListView(),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width - 60,
                              child: Card(
                                margin: EdgeInsets.only(
                                    left: 2, right: 2, bottom: 8),
                                child: TextFormField(
                                  focusNode: focusNode,
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintMaxLines: 10,
                                    hintText: "Type your message",
                                    prefixIcon: IconButton(
                                        onPressed: () {
                                          focusNode.unfocus();
                                          focusNode.canRequestFocus = false;
                                          show = !show;
                                        },
                                        icon: Icon(
                                            Icons.emoji_emotions_outlined)),
                                    suffixIcon: Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.attach_file)),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.camera_alt))
                                      ],
                                    ),
                                    contentPadding: EdgeInsets.all(5),
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 8, right: 5, left: 2),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    Color.fromARGB(255, 168, 28, 224),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.mic,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        show ? emojiSelect() : Container(),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }

  Widget emojiSelect() {
    return EmojiPicker(
        rows: 4,
        columns: 7,
        onEmojiSelected: (emoji, category) {
          print(emoji);
        });
  }
}
