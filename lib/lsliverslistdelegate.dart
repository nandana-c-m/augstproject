import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Listdeligate(),
    debugShowCheckedModeBanner: false,
  ));
}

class Listdeligate extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildListDelegate((
          [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/flower.png"),),
              title: Text("Nandana"),
              subtitle: Text("9605881852"),
              trailing: Icon(Icons.pages),

            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("images/flower.png"),),
              title: Text("arya"),
              subtitle: Text("9605881852"),
              trailing: Icon(Icons.pages),
            ),
          ]

      ))),
    );
  }
}




