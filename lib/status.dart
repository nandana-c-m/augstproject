import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Status(),debugShowCheckedModeBanner: false,));
}
class Status extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: [
         Card(
           child: ListTile(
             leading:CircleAvatar(backgroundImage: AssetImage("images/catser.png"),),
             title: Text("Status1"),
             subtitle: Text("9605881852"),
           ),
         ),

         Card(
           child: ListTile(
             leading:CircleAvatar(backgroundImage: AssetImage("images/nehala.png"),),
             title: Text("Status2"),
             subtitle: Text("76543289"),
           ),
         ),
         Card(
           child: ListTile(
             leading:CircleAvatar(backgroundImage: AssetImage("images/sayand.png"),),
             title: Text("Status3"),
             subtitle: Text("7356516493"),
           ),
         ),
         Card(
           child: ListTile(
             leading:CircleAvatar(backgroundImage: AssetImage("images/hello.png"),),
             title: Text("Status4"),
             subtitle: Text("987654367"),
           ),
         ),
       ],
     ),
   );
  }

}