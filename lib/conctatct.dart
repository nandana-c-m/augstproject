import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Contact(),debugShowCheckedModeBanner: false,));
}
class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            child:ListTile(
              leading: Icon(Icons.person),
              title: Text("Nandana"),
              subtitle: Text("9605881852"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Anupriya"),
              subtitle: Text("76543289"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Sayand"),
              subtitle: Text("73566493"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Anurag"),
              subtitle: Text("987654367"),
              trailing: Icon(Icons.call),
            ),
          ),
        ],
      ),
    );
  }
}