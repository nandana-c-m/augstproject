import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:expand () ,));
}
class expand extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        Container(color: Colors.pinkAccent,height: 100,),
        Expanded(child: Container(color: Colors.yellow,)),
        Expanded(child: Container(color: Colors.blue,)),
        Expanded(child: Container(color: Colors.purple,))
      ],
    ),
  );
  }


}