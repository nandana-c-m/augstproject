import 'package:augstproject/status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'conctatct.dart';
import 'gridviewcustm.dart';
import 'homepage.dart';
 void main(){
   runApp(MaterialApp(home: tabbar(),
   debugShowCheckedModeBanner: false,));
 }

class tabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return DefaultTabController(
   length: 4,
   child: Scaffold(
     appBar:AppBar(title: Text("Whatsapp"),
     backgroundColor: Colors.green,
     actions: [
       Padding(
         padding: const EdgeInsets.only(left: 5),
         child: Icon(Icons.search),
       ),
       SizedBox(height: 20,width:20,),
       Padding(
         padding: const EdgeInsets.only(right: 5),
         child: Icon(Icons.camera_alt),
       ),
       PopupMenuButton(itemBuilder:(context){
       return[
         PopupMenuItem(child: Text("settings")),
         PopupMenuItem(child: Text("helping")),
         PopupMenuItem(child: Text("Invite")),

       ];
       }),
     ],
       bottom: TabBar(labelColor:Colors.black,tabs: [
         Tab(icon:Icon(Icons.camera_alt) ,),
         Tab(child: Text("chat"),),
         Tab(child: Text("contact"),),
         Tab(child: Text("status"),),

       ],),
     ),
     body: TabBarView(children: [
       Homepage(),
       Gridviewcustm(),
       Contact(),
       Status()
     ],),

   ),
 );

}}