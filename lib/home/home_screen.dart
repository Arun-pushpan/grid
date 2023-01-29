

import 'package:flutter/material.dart';
import 'package:grid/home/body.dart';

import '../constant/constant.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text("Catalogue",style: TextStyle(color: Colors.black,
          fontSize: 18,fontWeight:FontWeight.w900),),
      leading: IconButton(
          onPressed: (){

          }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),

      actions: <Widget>[
        IconButton(onPressed: (){

        }, icon: Icon(Icons.add,size: 30,color: Colors.grey,)),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
