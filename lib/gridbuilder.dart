import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridbuilder(),
  debugShowCheckedModeBanner: false,));
}
class Gridbuilder extends StatelessWidget{
  var images=["images/sayand.png","images/nehala.png","images/nehala.png","images/sayand.png",
    "images/sayand.png","images/nehala.png","images/sayand.png","images/nehala.png","images/nehala.png","images/sayand.png"];
  var name=["anu","amal","anu","amal","anu","amal","anu","amal","anu","amal",];
  var rate=["2","3","2","3","2","3","2","3","2","3",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index){
        return Card(
          child: Column(
          children: [
            Image(image:AssetImage(images[index]),height: 80,width: 80,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100,top:100 ),
                  child: Text(name[index]),
                ),
                SizedBox(width: 100,),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text(rate[index],style: TextStyle(fontSize: 2),),
                ),
              ],
            )
          ],
        )
        );
      },itemCount: name.length,),
    );
  }

}