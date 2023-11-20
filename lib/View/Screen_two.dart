import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_setup_app/Model/ItemModel.dart';
import 'package:pet_setup_app/View/Animated_Container.dart';
import 'package:pet_setup_app/widget/Align_CenterStack.dart';
import 'package:pet_setup_app/widget/Align_StackBottom.dart';
import 'package:pet_setup_app/widget/Icon_AppBar.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key, required this.item});
  final List<ItemModel> item;

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final int is_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueGrey[300],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 70,left: 20),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(),
                            SizedBox(width: 10,),
                            Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Maye Berkovskaya',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 15),),
                                SizedBox(height: 5,),
                                Text('owner',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey.withOpacity(0.4)),),
                              ],
                            ),
                            SizedBox(width: 40,),
                            Text('May,25,2019',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14,color:Colors.grey.withOpacity(0.4), ),),

                          ],
                        ),
                        SizedBox(height: 20,),
                        Text("My job requires moving to another country. i don't have the opportunity to take the cat with me. I am looking for  good people who will  shelter my  Sola",style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 18,color: Colors.grey.withOpacity(0.4),),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconAppBar(),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 30),
            child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Hero(
                        tag: 1,
                        child: Image.asset(
                          'assets/pet-cat2.png',
                          height: 300,
                        )),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          widget.item.length,
                          (index) => Padding(
                            padding: EdgeInsets.only(top: 10, right: 5),
                            child: AnimatedLIneContainer(
                                isActive: index == is_index),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          AlignStackCenter(),
          AlignStackBottom(),
        ],
      ),
    );
  }
}
