import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridviewextend (),));
  
}
class Gridviewextend extends StatelessWidget{
  var name=["anu","arun","anu","arun","anu","arun","anu","arun","anu","arun",];
  var images=["images/catser.png","images/flower.png","images/hello.png","images/nehala.png","images/sayand.png"];
  var data=["12","23","12","23","12","23","12","23","12","23",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 3,
      children: List.generate(10, (index){
        return Card(
          child: Column(
            children: [
              Image(image: AssetImage(images[index]),),
              Row(
                children: [
                  Text(name[index]),
                  SizedBox(height: 100,width: 100,),
                  Text(data[index]),
                ],
              )
            ],
          ),
        );
      },)
      ),
    );

  }
}