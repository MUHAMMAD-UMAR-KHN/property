import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return Container(
        child: Image(image: AssetImage("assets/images/Group 11.png")),  
      );
    },scrollDirection: Axis.horizontal,itemCount: 05,);
  }
}