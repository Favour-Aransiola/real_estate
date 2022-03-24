import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/home.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor:Colors.black.withOpacity(0.3),
        accentColor: Colors.orangeAccent,
        primaryColor: Colors.purple,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black.withOpacity(0.85)),
          headline1: TextStyle(color: Colors.black)),
          primarySwatch: Colors.purple
      ),
      home: Home(),
    );
  }
}
