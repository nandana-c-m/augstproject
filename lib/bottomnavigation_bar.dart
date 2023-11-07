
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: bottom(),debugShowCheckedModeBanner: false,));
}
class bottom extends StatefulWidget{

  @override
  State<StatefulWidget> createState() =>bottomnavstate();

}
class bottomnavstate extends State<bottom>{
  @override

  int index=2;
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
      children: [
        Card(color: Colors.orange,
        child: ListTile(
          title:Text ("        1"),
          subtitle: Text("  Tuesday"),

        ),)
      ],

    ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.blue,
          currentIndex: index,
          onTap: (tapndx){
            setState(() {
              index=tapndx;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.green),
            BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search",backgroundColor: Colors.grey ),
            BottomNavigationBarItem(icon: Icon(Icons.people),label: "people",backgroundColor: Colors.purple),
            BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: "Account",backgroundColor: Colors.pinkAccent),
            BottomNavigationBarItem(icon: Icon(Icons.alarm),label:"Alaram" ,backgroundColor: Colors.blueGrey),
          ],

        ),

    );
  }


}