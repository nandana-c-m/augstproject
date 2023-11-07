import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() { 
  runApp(MaterialApp(home: bottom(), debugShowCheckedModeBanner: false,));
}

class bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(backgroundColor: Colors.cyan,
            floating: true,
            pinned: true,
            expandedHeight: 200,

            flexibleSpace:ListView(children: [SizedBox(height: 70,),),

            title: Center(child: Text("Type your Location",)),

            leading: Icon(Icons.menu),
            actions: [

              IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
            ],
            bottom: AppBar(backgroundColor: Colors.white,
              elevation: 0,

              title: Container(
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadiusDirectional.circular(190)),
                child: TextField(decoration: InputDecoration(hintText: "search ",suffixIcon:Icon(Icons.search),),
                ),

            ),
          ),

          )],
      ),
    );
  }

}