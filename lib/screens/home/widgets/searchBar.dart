
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:50,
      width:double.infinity,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(hintText: 'Search here...',prefixIcon: Icon(Icons.search),
        border: InputBorder.none),
      ),
    );
  }
}