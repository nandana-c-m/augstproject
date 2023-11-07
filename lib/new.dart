import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: bottom(),
    debugShowCheckedModeBanner: false,
  ));
}

class bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.cyan,
          floating: true,
          pinned: true,
          expandedHeight: 200,
          leading: Icon(Icons.menu),
          flexibleSpace: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 5),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Type your loction",
                    style: TextStyle(fontSize: 50),
                  ),
                )
              ],
            ),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
          bottom: AppBar(
            backgroundColor: Colors.cyan,
            elevation: 0,
            title: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(150)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(height: 500,width: 200,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Positioned(
                    left: 50,
                    top: 40,
                    child: Container(
                      child: Center(
                          child:Text(
                            "cafe",
                            style: TextStyle(fontSize: 15),
                          )),
                      color: Colors.deepOrange,
                      height: 100,
                      width: 100,
                    )),
                Positioned(right: 50,top: 40,
                  child: Container(
                    child: Center(
                        child: Text(
                      "hotel",
                      style: TextStyle(fontSize: 15),
                    )),
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  ),
                ),
                Positioned(
                    left: 200,
                    top: 40,
                    child: Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: Text(
                        "Restaurent",
                        style: TextStyle(fontSize: 15),
                      )),
                      color: Colors.blue,
                      height: 100,
                      width: 100,
                    )),

              ],
            ),
          ),
              Container(decoration: BoxDecoration(color: Colors.white),
              child: Padding(padding: EdgeInsets.only(top: 30),
              child: Column(children: [
                Padding(padding: EdgeInsets.only(left: 15,right: 15,bottom: 10),
                child: Image(image: NetworkImage("https://img-new.cgtrader.com/items/890600/d24c3857fd/modern-stylish-contemporary-master-bedroom-with-wc-bathroom-3d-model-max-obj-3ds-fbx-mtl.jpg"),
                ),
                ),Column(children: [
                  Align(alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(children: [
                      Text("Awesome room near Kakkanad ",style: TextStyle(fontSize: 15),
                      ),
                    ],
                    ),
                  ),
                  ),
                  Align(alignment: Alignment.centerLeft,
                  child: Padding(padding: EdgeInsets.only(left:15),
                  child: Row(children: [
                    Icon(Icons.star,color: Colors.black),
                    Icon(Icons.star,color: Colors.black),
                    Icon(Icons.star,color: Colors.black),
                    Icon(Icons.star_border,color: Colors.black),
                    Icon(Icons.star_border,color: Colors.black),
                    Text("(250 reviews)")
                  ],),),)
                ],),Padding(padding: EdgeInsets.only(left:15,right: 15,bottom: 10),
                    child: Image(image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP._gIWNiJHQPg9zP_bdPGBawHaE8&pid=Api&P=0&h=180"),
                ),),
                Column(children: [
                  Align(alignment: Alignment.centerLeft,
                  child: Padding(padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text("Beautifull Rooms",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)


                  ],),),), Align(alignment: Alignment.centerLeft,
                    child: Padding(padding: EdgeInsets.only(left:15),
                      child: Row(children: [
                        Icon(Icons.star,color: Colors.black),
                        Icon(Icons.star,color: Colors.black),
                        Icon(Icons.star,color: Colors.black),
                        Icon(Icons.star_border,color: Colors.black),
                        Icon(Icons.star_border,color: Colors.black),
                        Text("(400 reviews)")
                      ],),),)

                ],)
              ],),
              ),)
        ]))
      ],
    ));
  }
}
