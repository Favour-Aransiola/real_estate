import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/models/houseModel.dart';
import 'package:flutter_application_1/screens/secondPage/widget/bottomNav.dart';
import 'package:flutter_application_1/screens/secondPage/widget/pageDisp.dart';

class SecondPage extends StatelessWidget {
  HouseModel? house;
  SecondPage({Key? key, required this.house}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageDisp(house:house),
      bottomNavigationBar: MyButtomNav(),
    );
  }
}