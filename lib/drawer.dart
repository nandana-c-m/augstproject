import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: drawer(),debugShowCheckedModeBanner: false,));
}
class drawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("drawere"),),
     drawer: Drawer(
       child: ListView(
         children: [
           UserAccountsDrawerHeader(
             decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/home.png"))),
             accountName: Text("Nandana"),
               accountEmail:Text("nandana@123"),
           currentAccountPicture: Image(image: AssetImage("images/catser.png"),),
           otherAccountsPictures: [
             CircleAvatar(backgroundImage: AssetImage("images/hello.png"),),
             CircleAvatar(backgroundImage: AssetImage("images/nehala.png"),)
           ],
           ),
           ListTile(
             leading: Icon(Icons.home),
             title: Text("Home"),
           ),
           ListTile(
             leading: Icon(Icons.design_services),
             title: Text("Service"),
           ),
           ListTile(
             leading:Icon(Icons.account_box),
             title: Text("About"),
           ),
           ListTile(
             leading: Icon(Icons.search),
             title: Text("Search"),
           ),
           Divider(thickness: 1,color: Colors.black,),
           ListTile(
             leading: Icon(Icons.login),
             title: Text("Login"),
           ),Divider(thickness: 1,color: Colors.black,),
           ListTile(
             leading: Icon(Icons.share),
             title: Text("Share"),
           ),
           ListTile(
             leading: Icon(Icons.logout),
             title: Text("Logout"),
           ),
           Divider(thickness: 1,color: Colors.black,)
         ],
       ),
     ),

   );
  }

}