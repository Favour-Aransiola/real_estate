import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/models/houseModel.dart';

class PageDisp extends StatelessWidget {
  var house;
  PageDisp({Key?key, required this.house}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(leading: IconButton(
          icon: Icon(Icons.arrow_left_outlined, size: 50,),onPressed: (){
            Navigator.pop(context);
          },),
          actions: [
            Container(
              width:50,height: 50,
              decoration:BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child:Center(child: Icon(Icons.bookmark, color: Colors.white),)
            ),
            SizedBox(width:20)
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset('${house!.image}',fit: BoxFit.cover,),
            
          ),
          expandedHeight: 400,
          ),
          SliverList(
            
            delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0, vertical:10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('${house.name}', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(height:15),
                Text('P455, chhatak, Sylhet', style:TextStyle(fontSize: 18, 
                color:Colors.black.withOpacity(0.8))),
                SizedBox(height:15),
                Text('50000  sqft', style:TextStyle(fontSize: 18,
                color:Colors.black.withOpacity(0.8))),
                SizedBox(height:15),
                RichText(text: TextSpan(
                  children: [
                    TextSpan(text: '\$4455 ', style: TextStyle(color:Colors.purple,fontWeight: FontWeight.bold, fontSize: 18)),
                    TextSpan(text: 'Per Month', style: TextStyle(fontSize: 18,
                color:Colors.black.withOpacity(0.8)))
                  ]
                ),),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.bed_outlined, size:40),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('5 Bedroom'),
                          Text('3 MasterBedroom')
                        ],)
                  ],),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.breakfast_dining, size:40),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('5 Bedroom'),
                          Text('3 MasterBedroom')
                        ],)
                  ],)
                ],),
                SizedBox(height:30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.bed_outlined, size:40),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('5 Bedroom'),
                          Text('3 MasterBedroom')
                        ],)
                  ],),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.breakfast_dining, size:40),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('5 Bedroom'),
                          Text('3 MasterBedroom')
                        ],)
                  ],)
                ],),
                SizedBox(height: 20,),
                Text('About', style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('${house.about}')
              ],),
            )
          ]))
      ],
      );
  }
}