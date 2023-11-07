import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: drawernew(),debugShowCheckedModeBanner: false,));
}
class drawernew extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Nandana"),),
     drawer: Drawer(
       child: ListView(
         children: [
           UserAccountsDrawerHeader(accountName: Text("Nandana"),
               accountEmail:Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(right: 200),
                     child: Text("nandana@12356"),
                   ),Row(
                     children: [SizedBox(height: 30,),
                       Text("1500 followers"),SizedBox(width: 30,),Text("345 following")
                     ],
                   ),
                 ],
               ),
             currentAccountPicture: Image(image: AssetImage("images/flower.png"),),
             
           ),Divider(thickness: 1,color: Colors.blueGrey,),
           ListTile(
             leading: Icon(Icons.home),
             title: Text("Home"),
           ),
           ListTile(
             leading: Icon(Icons.message),
             title: Text("Message"),
           ),
           ListTile(
             leading: Icon(Icons.sync),
             title: Text("sync"),
           ),
           ListTile(
             leading: Icon(Icons.train),
             title: Text("Train"),
           ),
           ListTile(
             leading: Icon(Icons.settings),
             title: Text("Settings"),
           ),
           Divider(thickness: 1,color: Colors.blueGrey,),
           Text("Profile"),
           ListTile(
             leading: Icon(Icons.login),
             title: Text("login"),
           ),
           Divider(thickness: 1,color: Colors.blueGrey,),
           Text("Communucate"),
           ListTile(
             leading: Icon(Icons.share),
             title: Text("Share"),
           ),
           ListTile(
             leading: Icon(Icons.logout),
             title: Text("Logut"),
           ),
         ],
       ),
     ),
   );
  }

}