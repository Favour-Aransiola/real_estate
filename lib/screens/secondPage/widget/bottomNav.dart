import 'package:flutter/material.dart';

class MyButtomNav extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width*0.8,
      height: 50,
      margin:EdgeInsets.all(10),
      decoration:BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.circular(10)),
      alignment: Alignment.center,
      child: Text('Book Now', style: TextStyle(color: Colors.white,
      fontWeight:FontWeight.bold, fontSize: 18),
      ));
  }
}