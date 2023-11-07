import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home: Listbuilder(),));

}
class Listbuilder extends StatelessWidget{
  var name = [
    "Facebook",
    "A10 NETWORKS INC.",
    "Intel Crop",
    "HP Inc",
    "Advanced Micro Devices Inc.",
    "Apple Inc",
    "Amazon.com,Inc",
    "Microsoft Corporation",
    "Facebook",
    "Apple Inc",
    "HP Inc",
    "Intel Crop",
    "Intel Crop"

  ];
  var text = ["F", "A", "I", "H", "A", "A", "A", "M", "f","A","H","I","I"];
  var values = [
    "\$33.1",
    "\$10.34",
    "\$56.96",
    "\$32.43",
    "\$77.44",
    "\$133.98",
    "\$3505.44",
    "\$265.51",
    "\$339.1",
    "\$133.98",
    "\$77.44",
    "\$32.43",
    "\$10.34"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Builder"),),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          color: Colors.white,
          child: ListTile(
            leading: CircleAvatar(
              child: Text(text[index]),
              backgroundColor: Colors.blue,
            ),
            title: Text(name[index]),
            trailing: Text(values[index]),
          ),
        );

      }, itemCount:name.length,),
    );
  }

}