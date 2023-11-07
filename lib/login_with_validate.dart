// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(home: Login_with_valid(),
//     debugShowCheckedModeBanner: false,));
// }
//
// class Login_with_valid extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => Login_with_validate();
//
//
// }
//
// class Login_with_validate extends State<Login_with_valid> {
//   GlobalKey<FormState>formkey = GlobalKey();
//   bool showpass = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Login with validate"),),
//
//         body: SingleChildScrollView(
//           child: Center(
//             child: Form(
//               key: formkey,
//               child: Column(
//                 children: [
//                 SizedBox(height: 50,),
//               Text("login page",
//                 style: TextStyle(fontSize: 40, color: Colors.red),),
//               Padding(padding: EdgeInsets.only(top: 50, right: 60, left: 60),
//                 child: TextFormField(
//                     decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.person),
//                       labelText: "username",
//                       hintText: "Username",
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(100)),
//                     ),
//                     validator: (uname) {
//                       if (uname!.isEmpty || !uname.contains('@') ||
//                           !uname.contains('.')) {
//                         return "please enter valid username";
//                       }
//                       else {
//                         return null;
//                       }
//                     }
//                 ),
//                   sizedbox,
//                 Padding(padding: EdgeInsets.only(
//                     top: 20, left: 60, right: 60, bottom: 60),
//                   child: TextFormField(
//                       obscuringCharacter: "*",
//                       obscureText: showpass,
//                       decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.lock),
//                         suffixIcon: IconButton(onPressed: () {
//                           setState(() {
//                             if (showpass) {
//                               showpass = true;
//                             }
//                             else {
//                               showpass = false;
//                             }
//                           });
//                         },
//                           icon: Icon(
//                               showpass == true ? Icons.visibility_off : Icons
//                                   .visibility),),
//                         labelText: "password",
//                         hintText: "password",
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(100)),
//                       ),
//                       validator: (password) {
//                         if (password!.isEmpty || password!.length < 6) {
//                           return " please enter valid password";
//                         }
//                         else {
//                           return null;
//                         }
//                       }
//
//                   ),
//                 ),
//                 ElevatedButton(onPressed: () {
//                   final
//                   valid
//                   .
//                   formkey
//                   .
//                   currentState!.validate();
//                   if(valid){
//                   Navigator.push(context, MaterialPageRouter(builder: (context)=>Homepage()));
//                   }
//                   else{
//                   return null;
//                   }
//                 }, child: Text("login"), style: ElevatedButton.styleFrom(),),
//                 SizedBox(height: 20,),
//                 TextButton(onPressed: () {}, child: Text("create a new user"))
//                 ],
//               ),
//             ),
//           ),
//         )
//     );
//   }
// }