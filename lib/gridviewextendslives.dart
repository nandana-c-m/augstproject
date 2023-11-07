import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){

    runApp(MaterialApp(home: Gridview(),
    debugShowCheckedModeBanner: false,));
}
class Gridview extends StatelessWidget{
  var images=["images/sayand.png","images/nehala.png","images/nehala.png","images/sayand.png",
    "images/sayand.png","images/nehala.png","images/sayand.png","images/nehala.png","images/nehala.png","images/sayand.png"];
  var name=["anu","amal","anu","amal","anu","amal","anu","amal","anu","amal",];
  var rate=["2","3","2","3","2","3","2","3","2","3",];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,crossAxisSpacing: 20,mainAxisSpacing: 20),
     children: List.generate(10, (index) {
       return Card(
       child: Column(
       children: [
         Image(image: AssetImage(images[index]),height: 80,width: 80,),
    Row(
    children: [
      Text(name[index]),
    SizedBox(width: 100,),
    Text(rate[index])
    ],
    ),
    ]
       ),
       );
    },

    ),
    ),
   );
  }

}