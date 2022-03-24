import 'package:flutter/material.dart';


class EndList extends StatelessWidget {
  const EndList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white),
        child:Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:[
                  Container(
                    width:MediaQuery.of(context).size.width/2.5,
                    height: 90,
                    decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('image3.png'), 
                    fit:BoxFit.cover),
                  ),),
                  SizedBox(width:20),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('The Moon House', style:TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold)),
                    Text('This is a random section')
                  ],)
                ]
              ),
            ),
            Positioned(
              top:10,
              right: 15,
              child: Container(width:40,height: 40,

            decoration: BoxDecoration(color:Colors.grey,shape:BoxShape.circle), child:Center(
              child:Icon(Icons.favorite, color:Colors.white)
            )
            ))
          ],
        )
    );
  }
}