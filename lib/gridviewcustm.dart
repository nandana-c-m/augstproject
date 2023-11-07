import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridviewcustm(),));
}
class Gridviewcustm extends StatelessWidget{
  var images=["images/sayand.png","images/nehala.png","images/nehala.png","images/sayand.png",
    "images/sayand.png","images/nehala.png","images/sayand.png","images/nehala.png","images/nehala.png","images/sayand.png"];
  var name=["anu  :","amal  :","anu  :","amal  :","anu  :","amal  :","anu  :","amal  :","anu  :","amal  :",];
  var rate=["2","3","2","3","2","3","2","3","2","3",];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20),
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          return Container(color: Colors.black12,
            child: Row(
              children: [
                Column(
                  children: [
                    Image(image: AssetImage(images[index]),height: 200,width: 200,),
                    Row(
                      children: [
                        Text(name[index]),
                        SizedBox(height:100,width: 100,),
                        Text(rate[index])
                      ],
                    ),

                  ],
                ),
              ],
            ),
          );
        },childCount: images.length
  )),
  );
}
}