
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {

  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text('Hello Favour', style: TextStyle(color: Colors.black.withOpacity(0.8), 
      fontSize: 16)),
      SizedBox(height: 5,),
      Text('Find Your sweet Home', style: TextStyle(color: Colors.black.withOpacity(0.8), 
      fontSize: 20, fontWeight: FontWeight.bold))
    ],);
  }
}