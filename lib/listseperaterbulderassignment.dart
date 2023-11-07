import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(DevicePreview(builder: (BuildContext context)=>MaterialApp(useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: Listseperated(),
  )));
}

class Listseperated extends StatelessWidget{

  var text=["List Item0","List Item1","List Item2","List Item3","List Item4","List Item5","List Item6","List Item7","List Item8","List Item9","List Item10","List Item11",
    "List Item12","List Item13","List Item14","List Item15","List Item16"];
  var sep=["sep0","sep1","sep2","sep3","sep4","sep5","sep7","sep9","sep10","sep11","sep12","sep13","sep14","sep15","sep16"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView.separated()"),backgroundColor: Colors.green,),
     body: ListView.separated(itemBuilder: (context,index){
       return Card(color: Colors.white,
         child: ListTile(
           title: Text(text[index]),
         ),);
       
     }, separatorBuilder: (Contex,index){
       return Container(
         child: Text(sep[index]),color: Colors.grey,

       );
     }, itemCount: text.length),

    );
  }

}