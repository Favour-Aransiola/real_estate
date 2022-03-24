import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/models/houseModel.dart';
import 'package:flutter_application_1/screens/secondPage/secondPage.dart';
List<HouseModel> images=[HouseModel(image: 'image3.png', name: 'Favour\'s Apartment', 
about: 'This is not the regular apartment you can find anywhere in Nigeria'),
HouseModel(image: 'image3.png', name: 'Anybody\'s Apartment', 
about: 'This is the regular apartment you can find anywhere in Nigeria')
];
class HouseViews extends StatelessWidget {
  const HouseViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index){
      return GestureDetector(
        onTap:(){
          Navigator.push(context, 
          CupertinoPageRoute(builder: (context) {
            return SecondPage(house: images[index]);
          },));},
        child: Container(
          width: 300,
          height:400,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Stack(
            children: [
              Container(decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage('${images[index].image}'), fit: BoxFit.cover), 
                borderRadius:BorderRadius.circular(10),),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(height: 80,width: 300, 
        color:Colors.white.withOpacity(0.6), child:
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                    Text('${images[index].name}', style: TextStyle(fontSize: 18, 
                    fontWeight: FontWeight.bold,)),
                    Text('P455, Chhatak, Sylhet')
                ]
              ),
              Padding(
                padding: const EdgeInsets.only(right:20),
                child: Icon(Icons.favorite, color:Colors.pink,
              ))
            ],
          ),
          
        ))),
        Positioned(
          top: 20,
          right: 20,
          child: Container(
            width:40,
            height:40,
            decoration: BoxDecoration(shape: BoxShape.circle, color:Colors.pink),
            child:Icon(Icons.bookmark, color:Colors.white, size:25)
        ))
      
      
            ],
          )),
      );
    }, separatorBuilder: (context, index){
      return SizedBox(width:20);
    }, itemCount: images.length);
  }
}