import 'package:flutter/material.dart';
import 'package:pet_setup_app/Model/ItemModel.dart';
import 'package:pet_setup_app/View/Screen_Three.dart';
import 'package:pet_setup_app/condiguration.dart';

class ContainerTwo extends StatelessWidget {
  const ContainerTwo({super.key,required this.catogery});
final List <ItemModel> catogery;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showDialog(context: context, builder: (context){
          return ScreenThree(artwo: catogery,);
        },);
      },
      child: Container(
        height: 240,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: shadowList,
                      color: Colors.orange[100],
                    ),
                    margin: EdgeInsets.only(top: 40),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Hero(tag:3 ,child:Image.asset('assets/pet-cat1.png',),),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 60,bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: shadowList,
                    color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20, right: 20, bottom: 10),
                          child: Text('Orion',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(fontSize: 24)),
                        ),
                        Icon(Icons.male,
                          color: Colors.grey[400], size: 32,
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Text('Abyssinian cat',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 14,),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Text('1.5 years old',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey.withOpacity(.5),fontSize: 12),),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.location_on,color: primaryGreen,),
                        SizedBox(width: 2,),
                        Text('Distance: 7.8km',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey.withOpacity(0.7),fontSize: 15),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
