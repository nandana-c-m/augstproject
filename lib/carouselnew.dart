import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: carousel(),debugShowCheckedModeBanner: false,));
}
class carousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.green,
          floating: true,
          pinned: true,
          expandedHeight: 200,
          title: Text("FARMERS FRESH ZONE",style: TextStyle(color:Colors.white),),
           actions: [IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined)),Padding(
             padding: const EdgeInsets.only(top: 19),
             child: Text("Kochi"),
           ),
        ],bottom: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          title: Container(
            decoration: BoxDecoration(color:Colors.white),
            child: TextField(decoration: InputDecoration(hintText: "Search for vegitables and  loaction",border: InputBorder.none
            ,prefixIcon: Icon(Icons.search)),
            ),

          ),

        ),),SliverList(delegate: SliverChildListDelegate([SizedBox(height:20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 150,
                child: Center(child: Text("VEGITABLES",style: TextStyle(color: Colors.green),),),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 150,
                child: Center(child: Text("FRUITS",style: TextStyle(color: Colors.green),),),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 150,
                child: Center(child: Text("EXOTIC CUTS",style: TextStyle(color: Colors.green),),),
              ),


            ],
          ),SizedBox(height: 20,),



        CarouselSlider(items: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:DecorationImage(image: NetworkImage("http://upload.wikimedia.org/wikipedia/commons/c/c8/Altja_j%C3%B5gi_Lahemaal.jpg"),
                fit:  BoxFit.cover),)

        ),Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: NetworkImage("https://wallup.net/wp-content/uploads/2016/01/272904-nature-landscape-green-grass.jpg"),
            fit:BoxFit.cover )),) ], options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          initialPage: 2,
          autoPlay: true,
          autoPlayCurve: Curves.bounceOut,
          autoPlayAnimationDuration: Duration(microseconds: 800)

        )
      
    ),]),
  ),Container(
          decoration: BoxDecoration(color: Colors.black,

          ),child: Icon(Icons.policy),
        )]));
  }

}