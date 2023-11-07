
import 'dart:async';


import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Loginpage.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Myapp(),
      )));
}

class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>MyappState();

  }

class MyappState  extends State<Myapp>{
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Colors.pink,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200,),
              Image(
                  image: AssetImage("images/flower.png"),
                  height: 100,
                  width: 100),
              Text("welcome to flutter",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


