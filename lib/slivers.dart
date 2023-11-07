import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:  Slivers(),debugShowCheckedModeBanner: false,));
}
class Slivers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          expandedHeight: 200,flexibleSpace:Container(color: Colors.pinkAccent,),
          title: Text("Sliver Example"
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
          ],
          bottom: AppBar(
            elevation: 0,
            title: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: TextField(
                decoration: InputDecoration(hintText: "Search something",suffixIcon: Icon(Icons.search)),

                
              ),
            ),
          ),
        ),
        SliverList(delegate: SliverChildListDelegate(
          [
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("nandana"),
              subtitle: Text("9605881852"),
            ),

        ],),)
      ],
    ),
  );
  }
  
}