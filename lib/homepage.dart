import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Homepage(),));
}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: [
         Card(color: Colors.pink,
           child: ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage("images/flower.png"),),
             title: Text("Nandana"),
             subtitle: Text("9605881852"),
             trailing: Icon(Icons.call),
           ),
         ),
         Card( color: Colors.blue,
           child: ListTile(
             leading:CircleAvatar(backgroundImage: AssetImage("images/sayand.png"),),
             title: Text("sayand"),
             subtitle: Text("7356616493"),
             trailing: Icon(Icons.call),
           ),
         ),
         Card(color: Colors.amber,
           child: ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage("images/hello.png"),),
             title: Text("Anurag"),
             subtitle: Text("6282777426"),
             trailing: Icon(Icons.call),
           ),
         ),
         Card(color: Colors.red,
           child: ListTile(
             leading: CircleAvatar(backgroundImage: AssetImage("images/nehala.png"),),
             title: Text("nehala"),
             subtitle: Text("6282777429"),
             trailing: Icon(Icons.call),
           ),
         ),
       ],
     )

   );
  }

}