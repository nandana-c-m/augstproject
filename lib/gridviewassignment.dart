import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview(),
  debugShowCheckedModeBanner: false,));
}
class Gridview extends StatelessWidget{
  var name=["Home","Email","Alaram","Wallet","Backup","Book","Camera","Person","print",
  "Phone","Notes","Music"];
  var colors=[Colors.amber,Colors.grey,Colors.deepOrange,Colors.red,Colors.blue,Colors.green,Colors.pink,Colors.deepOrange,Colors.blueGrey,
  Colors.blueAccent,Colors.deepOrange,Colors.pink];
  var icons=[Icons.home,Icons.email,Icons.alarm,Icons.wallet,Icons.backup,Icons.book,Icons.camera,
    Icons.person,Icons.print,Icons.phone,Icons.notes,Icons.music_note];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.count(crossAxisCount: 3,
    children: List.generate(12, (index) {
      return Card(color:colors[index],
        child: Column(
          children: [SizedBox(height: 5 ,),
            Icon(icons[index],size: 50,),
            SizedBox(height: 20,),
            Text(name[index]),

            ],
        ),
      );
  }

    ),),
  );
}
}