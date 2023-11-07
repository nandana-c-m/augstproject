import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Grid(),
  ));
}
class Grid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        Card(
          child: Image(image: AssetImage("images/flower.png"),height: 100,width: 100,),
        ),Card(
          child: Image(image: AssetImage("images/flower.png"),),
        ),Card(
          child: Image(image: AssetImage("images/flower.png"),),
        ),Card(
          child: Image(image: AssetImage("images/flower.png"),),
        ),Card(
          child: Image(image: AssetImage("images/flower.png"),),
        )
      ],),
    );
  }
  
}