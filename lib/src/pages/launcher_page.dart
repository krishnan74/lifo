import 'package:flutter/material.dart';
import 'package:lifo/src/pages/main_page.dart';

class Launcher_page extends StatefulWidget {
  @override
  _Launcher_pageState createState() => _Launcher_pageState();
}

class _Launcher_pageState extends State<Launcher_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(5, 5, 5, 1),
      body:

      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
            children: [
                Container(
                      margin: EdgeInsets.only(bottom: 30, top: 130),
                      padding: EdgeInsets.symmetric(horizontal: 100),
                    width: 100,
                      height: 100,
                      /*decoration: BoxDecoration(
                         color: Colors.red,
                         borderRadius: BorderRadius.circular(50.0)),*/
                      child: Image.asset('assets/images/LIFO.png')),
                  //ENTER IMAGE PATH

                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              TextField(
                style: TextStyle(
                  color: Colors.white
                ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),

              SizedBox(height: 20),
              TextField(
                  obscureText: true,
                  style: TextStyle(
                      color: Colors.white
                  ),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password')
                ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        //TODO FORGOT PASSWORD SCREEN GOES HERE
                      },
                      child: Text(
                        'Forgot Password? ',
                        style: TextStyle(
                            color: Colors.white, fontSize: 15),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        //TODO FORGOT PASSWORD SCREEN GOES HERE
                      },
                      child: Text(
                        'Create New Account',
                        style: TextStyle(
                            color: Colors.white, fontSize: 15),
                      ),
                    ),

                  ],
                ),
              ),



              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(34,34,44,1),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              Text('', style: TextStyle(
              color: Colors.white,

    ),)
            ],
          ),
      ),

    );
  }
}
