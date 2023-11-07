import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Listseperated(),
  ));
}

class Listseperated extends StatelessWidget{
  var name=["anu","manu","aswanth","vinu"];
  var images=["images/flower.png","images/hello.png","images/nehala.png","images/sayand.png"];
  var phone=["5555","6666","7777","8888"];
  var colors=[Colors.red,Colors.amber,Colors.blue,Colors.pink];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.separated(itemBuilder: (context,index){
        return Card(color: colors[index],
        child: ListTile(
          leading: Image(image: AssetImage(images[index]),),
          title: Text(name[index]),
          subtitle: Text(phone[index]),
          trailing: Icon(Icons.access_alarm),
        ),);
      },separatorBuilder: (context,index){
        return Divider(
          thickness: 5,
          color: colors[index],
        );
      },itemCount: images.length,),
    );
  }

}