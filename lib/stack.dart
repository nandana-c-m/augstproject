import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Stackeg(),debugShowCheckedModeBanner: false,));
}
class Stackeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Stack(
       children: [
         Center(child: Container(color: Colors.pink,height: 600,width: 600,)),
         Positioned(child: Container(color: Colors.blue,height: 200,width: 200,),top:250,left: 250,),
         Positioned(child: Container(color: Colors.green,height: 200,width: 200,),top: 250,left:550),
       ],
     ),
   );
  }

}