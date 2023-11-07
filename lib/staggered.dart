import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: Staggered(),));
}
class Staggered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(crossAxisCount: 4,children: [
       StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(
         color: Colors.cyan,
       )
       ),
        StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 3, child: Container(
          color: Colors.black12,
        )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
          color: Colors.cyan,
        )),
        StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(
          color: Colors.blue,
        )
        ),
        StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
          color: Colors.pink,
        ))
      ],),
    );
  }
}