import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.all(20),
      child:Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Icon(Icons.menu,size:30),
          CircleAvatar(
                backgroundImage: AssetImage('image3.png'),
                radius: 30,
          )
        ]
      )

    ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity,90);
}