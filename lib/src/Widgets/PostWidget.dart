import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget{
  const PostWidget({super.key, required this.profilePic, required this.username, required this.caption, required this.postImage, required this.postedBefore});

  final String profilePic;
  final String username;
  final String caption;
  final Image postImage;
  final DateTime postedBefore;

  @override

  Widget build(BuildContext context){
    return Container(
      height: 420,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.white38, width: 0.6),

        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20, top: 20),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25, right: 15 ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(profilePic),
                    radius: 20,
                  ),
                )
                ,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(username, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Poppins")),
                    Text(postedBefore.toString().substring(5, 19), style: TextStyle(color: Colors.white, fontSize: 10, fontFamily: "Poppins"))
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(left: 170),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, color: Colors.white,),))

              ],
            )
          ),

          Container(
            child: postImage,
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            margin: EdgeInsets.only(top: 15, bottom: 20),
            child: Text(caption, style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontSize: 12)),
          )

        ],
      )
    );
  }
}