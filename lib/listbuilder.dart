import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home: Listbuilder(),));

}
class Listbuilder extends StatelessWidget{
  var name=["Nandana","Sayand","Anurag","Nehala"];
  var images=["images/flower.png","images/sayand.png","images/hello.png","images/nehala.png"];
  var phone=["9605881852","7356616493","6282777426","6282777429"];
  var colors=[Colors.blue,Colors.green,Colors.red,Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            leading: Image(image: AssetImage(images[index]),),
            title:Text(name[index]) ,
            subtitle: Text(phone[index]),
            trailing:Icon(Icons.call),
          ),
        );

      }, itemCount:name.length,),
    );
  }

}