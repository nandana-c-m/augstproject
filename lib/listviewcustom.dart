import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Listcustom(),
    debugShowCheckedModeBanner: false,
  ));
}

class Listcustom extends StatelessWidget{
  var name=["Nandana","Sayand","Anurag","Nehala"];
  var images=["images/flower.png","images/sayand.png","images/hello.png","images/nehala.png"];
  var phone=["9605881852","7356616493","6282777426","6282777429"];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){
      return Card(
        child: ListTile(
          leading:CircleAvatar(backgroundImage: AssetImage(images[index]),),
          title: Text(name[index]),
          subtitle: Text(phone[index]),
        ),
      );

    },childCount: name.length
    )), );


}}