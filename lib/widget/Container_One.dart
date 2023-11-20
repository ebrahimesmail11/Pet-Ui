import 'package:flutter/material.dart';
import 'package:pet_setup_app/Model/ItemModel.dart';
import 'package:pet_setup_app/View/Screen_two.dart';
import 'package:pet_setup_app/condiguration.dart';

class ContainerOne extends StatelessWidget {
  const ContainerOne({super.key,required this.catogrey});

final List<ItemModel> catogrey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return ScreenTwo(item: catogrey,);
        }),);
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
                      color: Colors.blueGrey[300],
                    ),
                    margin: EdgeInsets.only(top: 50),
                  ),
                  Align(
                      child: Hero(tag: 1,child: Image.asset('assets/pet-cat2.png'),),
                      alignment: Alignment.centerLeft),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 60, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                  boxShadow: shadowList,
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
                          child: Text('Sola',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(fontSize: 24)),
                        ),
                        Transform.scale(
                          scale: -1,
                          child: Icon(Icons.female,
                              color: Colors.grey[400], size: 32),
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
                      child: Text('2 years old',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey.withOpacity(.5),fontSize: 12),),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.location_on,color: primaryGreen,),
                        SizedBox(width: 2,),
                        Text('Distance: 3.6km',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey.withOpacity(0.7),fontSize: 15),),
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
