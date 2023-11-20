import 'package:flutter/material.dart';
import 'package:pet_setup_app/condiguration.dart';

class ConatinerList extends StatefulWidget {
  const ConatinerList({super.key});

  @override
  State<ConatinerList> createState() => _ConatinerListState();
}

class _ConatinerListState extends State<ConatinerList> {
  // List _selectedIndexs=[];
  int isIndex=0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        // final _isSelected=_selectedIndexs.contains(index);
        return InkWell(
          onTap: (){
            setState(() {
               isIndex=index;
              // if(is_Clicked){
              //   is_Clicked=false;
              // }else{
              //   is_Clicked=true;
              // }
            });
          },
          child: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                     color:   isIndex==index ?primaryGreen :Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: shadowList,
                  ),
                  child: Image.asset(categories[index]['iconPath'], height: 50,
                    width: 50,),
                ),
                SizedBox(height: 8,),
                Text(categories[index]['name']),
              ],
            ),
          ),
        );
      },
    );
  }
}
