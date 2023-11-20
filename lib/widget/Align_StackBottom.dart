import 'package:flutter/material.dart';
import 'package:pet_setup_app/condiguration.dart';

class AlignStackBottom extends StatelessWidget {
  const AlignStackBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),),
          color: Colors.grey[200],
          boxShadow: shadowList,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: primaryGreen,
              ),
              child: Icon(Icons.favorite_border,color: Colors.white,),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 20),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: primaryGreen,
                ),
                child: Center(child: Text('Adoption',style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white,fontSize: 22),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
