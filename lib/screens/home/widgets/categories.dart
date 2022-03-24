import 'package:flutter/material.dart';


class Categories extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => CategoriesState();
}

class CategoriesState extends State<Categories> {
  
  List? category;
  @override
  void initState() {
    super.initState();
  category= <String>[
    'Top Recommended',
    'Near you',
    'Agency Recommendation'
  ];  
  }
  var currSelected =0;
  

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap:true,
      itemCount: category!.length,

      itemBuilder: (context, index){
      return GestureDetector(
        onTap: (){
          setState(() {
            currSelected = index;
          });
        },
        child: Container(
          decoration: BoxDecoration(border: Border(
            bottom: BorderSide(color: index==currSelected?Colors.purple:Colors.transparent,width: 4)
          )),
          alignment: Alignment.center,child:
           Padding(
             padding: const EdgeInsets.all(3.0),
             child: Text('${category![index]}', 
              style: TextStyle(fontSize: index==currSelected?18:16,color: 
              index==currSelected?Colors.purple:Colors.black.withOpacity(0.5)),),
           ),
          ),
      );
    },separatorBuilder: (context, index){return SizedBox(width:20);},
    );
  }
}