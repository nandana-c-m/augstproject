import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: chromicle(),debugShowCheckedModeBanner: false,));
}
class chromicle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.only(top: 100,left: 100),
       child: Column(
         children: [
           Center(
             child: Container(
               child: CircleAvatar(backgroundImage: AssetImage("images/catser.png"),),
             ),
           )
         ],
       ),
     ),
   );
  }
}