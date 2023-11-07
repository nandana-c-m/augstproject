import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: LottieEG(),

  ));
}
class LottieEG extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Lottie.asset("Animation/gundu.json"),
        Lottie.asset("nahttps://lottie.host/afd08603-cc34-4be4-a4ea-9975ff35506a/DfUtquiRge.jsonme")

      ],),
    );
  }

}