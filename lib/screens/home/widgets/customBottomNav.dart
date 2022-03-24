import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:60,
      width:50,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical:5),
      margin:EdgeInsets.only(bottom:10, left:5, right:5),
      decoration:BoxDecoration(color: Colors.white,
      boxShadow: [BoxShadow(color: Colors.grey,blurRadius: 10,spreadRadius: 1)], 
      borderRadius:BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
        Icon(Icons.home, color:Colors.purple, size:35),
        Icon(Icons.search, color:Colors.grey, size:25),
        Icon(Icons.notifications_active_outlined, color:Colors.grey, size:25),
        Icon(Icons.chat_rounded, color:Colors.grey, size:25),
        Icon(Icons.bookmark, color:Colors.grey, size:25)
      ],),);
  }
}