import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridlist(),));
}
class gridlist extends StatelessWidget{
  var images=["images/sayand.png","images/sayand.png","images/sayand.png","images/sayand.png","images/sayand.png","images/sayand.png","images/sayand.png","images/sayand.png","images/sayand.png","images/sayand.png"];
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
   children:List.generate(10, (index) {
     return Card(
       child: Column(
         children: [
           Image(height:200,width:200,image: AssetImage(images[index])),
         ],
       ),
     );
   })
   ,),
 );
  }

}