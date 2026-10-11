import 'package:flutter/material.dart';
import '../Widgets/PostWidget.dart';

class Feed_page extends StatefulWidget {
  const Feed_page({Key? key}) : super(key: key);

  @override
  State<Feed_page> createState() => _Feed_page();
}

class _Feed_page extends State<Feed_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Color.fromRGBO(5, 5, 5, 1),
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(5, 5, 5, 1),
            title: Text('Licet Feed',
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w100,
              fontSize: 23,
              color: Colors.white
            ),),
            leading: IconButton(onPressed: () { } , icon: Icon(Icons.menu), color: Colors.white,),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search), color: Colors.white)],
          ),
          body: Column(
            children: [
              Container(
                height: 70,
                padding: EdgeInsets.only(left: 20),
                child: Row(
                    children:[
                      Icon(Icons.add_box, size: 40,color: Colors.white,),
                      SizedBox(width: 20),
                      Text("Create your own post ... ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white, decoration: TextDecoration.underline),)
                    ]
                )
              ),
              Expanded(
                child:
                ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) => PostWidget(profilePic: "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg", username: "Inumaki", caption: "It was a pleasant evening for hold back myself from capturing this breathtaking picture ...", postImage: Image.network("https://hips.hearstapps.com/hmg-prod/images/gettyimages-907914534-1590070809.jpg"), postedBefore: DateTime(2023, 07, 23))
                ),
              )
          ]
          )
    );
  }
}
