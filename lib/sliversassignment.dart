import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: sliversnew(), debugShowCheckedModeBanner: false,));
}
class sliversnew extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(backgroundColor: Colors.white,
          floating: true,
          pinned: true,
          expandedHeight: 200,
          title: Text("Conversation",style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,color: Colors.black),),
          actions:[ TextButton(onPressed: (){},child: Text("+ Add New",style: TextStyle(color: Colors.red),),)
          ],
          bottom: AppBar(backgroundColor: Colors.white,
            elevation: 0,
            title: Container(
              decoration: BoxDecoration(color: Colors.white,borderRadius:BorderRadius.circular(15)),
              child: TextField(
                decoration: InputDecoration(hintText: "seaching something",suffixIcon: Icon(Icons.search)),
              ),
            ),

          ),
        ),
        SliverList(delegate: SliverChildListDelegate(
          [
          ListTile(
            leading:CircleAvatar(backgroundImage: AssetImage("images/catser.png"),),
             title:Text("Nandana"),
          subtitle: Text("Good to know"),
            trailing: Text("Today"),
          ),
            ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/flower.png"),),
              title:Text("Rezi Makarov"),
              subtitle: Text("its been while"),
              trailing: Text("Today"),
            ),
            ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/catser.png"),),
              title:Text("Gustav Lemelo"),
              subtitle: Text("Hey where are you"),
              trailing: Text("yesterday"),
            ),
            ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/flower.png"),),
              title:Text("BOb Ryder"),
              subtitle: Text("its over"),
              trailing: Text("28 Jan"),
            ),
            ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/hello.png"),),
              title:Text("Ken Simda"),
              subtitle: Text("Your welcome"),
              trailing: Text("24 Jan"),
            ),
            ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/catser.png"),),
              title:Text("Emma Walkins"),
              subtitle: Text("I am going out"),
              trailing: Text("24 Jan"),
            ),
            ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/hello.png"),),
              title:Text("Gouri"),
              subtitle: Text("who are you"),
              trailing: Text("13 Jan"),
            ),
            ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/sayand.png"),),
              title:Text("Remo"),
              subtitle: Text("Nice one"),
              trailing: Text("12 Jan"),
            ),
            ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/catser.png"),),
              title:Text("Leo"),
              subtitle: Text("Beautifull"),
              trailing: Text("5 jan"),
            ),
            ListTile(
              leading:CircleAvatar(backgroundImage: AssetImage("images/sayand.png"),),
              title:Text("Nandana"),
              subtitle: Text("How is it?"),
              trailing: Text("3 Jan"),
            ),
            
      ],
    ),
  ),]
      ,),
    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.deepOrange,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: "chats",backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.wifi_channel),label: "Channel",backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person",backgroundColor: Colors.black)
],
    ),
  );
  }
  
}