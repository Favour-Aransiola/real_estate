
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/widgets/categories.dart';
import 'package:flutter_application_1/screens/home/widgets/customAppBar.dart';
import 'package:flutter_application_1/screens/home/widgets/customBottomNav.dart';
import 'package:flutter_application_1/screens/home/widgets/endlist.dart';
import 'package:flutter_application_1/screens/home/widgets/houseViews.dart';
import 'package:flutter_application_1/screens/home/widgets/searchBar.dart';
import 'package:flutter_application_1/screens/home/widgets/welcomeText.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar : CustomAppBar(),
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical:5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height:20),
                WelcomeText(),
                SizedBox(height:20),
                SearchBar(),
                SizedBox(height:20),
                Container(
                  width:double.infinity,
                  height:30,
                  child: Categories()),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 400,
                    child: HouseViews()),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                    Text('Best Offer', style: TextStyle(fontSize: 18, 
                    fontWeight: FontWeight.bold)),
                    TextButton(child: Text('See All'), onPressed: (){},)
                  ]),
                  SizedBox(height: 20),
                  EndList()
            ],),
          )),
          bottomNavigationBar: CustomBottomNavigation(),
        )
        
      );}
}