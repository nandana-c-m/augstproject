import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Loginpage(),
      )));
}
class Loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Login page"),),
     body: Container(child:Center(
       child: Column(
         children: [
           SizedBox(height: 40,),
         Image(image: AssetImage("images/flower.png"),height: 80,width: 80,),
    SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.only(left: 50,right: 50),
             child: TextField(
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.person),
                   hintText:"username",
                   border: OutlineInputBorder(borderRadius:BorderRadius.circular(20))),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 50,right: 50,top: 30),
             child: TextField(
               decoration:InputDecoration(
                 prefixIcon: Icon(Icons.lock),
                 suffixIcon:Icon(Icons.visibility_off) ,
                   hintText:"password"
                   ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))) ,
             ),

           ),
           SizedBox(height: 50,),
           ElevatedButton(onPressed: (){}, child: Text("login") ,style:ElevatedButton.styleFrom(
               backgroundColor: Colors.deepOrange),),
           SizedBox(height: 30,),
           TextButton(onPressed: (){}, child: Text("Create a new user"))
         ],
       ),
     ),)
   );

  }
}
