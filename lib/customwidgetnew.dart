import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customwidget.dart';
void main(){
  runApp(MaterialApp(home: custm(),debugShowCheckedModeBanner: false,));
}

class custm extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(backgroundColor:Colors.pinkAccent,title: Text("Hello....",style: TextStyle(fontSize: 30,color: Colors.black),),),
     body:Container(
       child: Custmwidget(onpress: () {

       },
         img: Image(image: AssetImage("images/catser.png"),),
         text: Text("Nandana"),
         bgcolor: Colors.cyan,


       ),

           ),
         );
  }

}