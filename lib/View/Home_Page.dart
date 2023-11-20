import 'package:flutter/material.dart';
import 'package:pet_setup_app/Model/ItemModel.dart';
import 'package:pet_setup_app/condiguration.dart';
import 'package:pet_setup_app/widget/Containe_List.dart';
import 'package:pet_setup_app/widget/Container_One.dart';
import 'package:pet_setup_app/widget/Container_Two.dart';
import 'package:pet_setup_app/widget/Text_Field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double xoffSet = 0;

  double yoffSet = 0;

  double scalFactor = 1;

  bool isDrawerOp = false;
  final List<ItemModel> artList=const [
    ItemModel(image: "assets/pet-cat2.png",),
    ItemModel(image:  " assets/pet-cat1.png",),
    ItemModel(image:  " assets/pet-cat1.png",),

  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffSet, yoffSet, 0)
        ..scale(scalFactor),
      duration: Duration(
        milliseconds: 250,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isDrawerOp?30:0.0),
         color: Colors.grey[200],
      ),
      child: SingleChildScrollView(
        child:  Column(
          children: [
            SizedBox(height: 50,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOp
                      ? IconButton(
                    onPressed: () {
                      setState(() {
                        xoffSet = 0;
                        yoffSet = 0;
                        scalFactor = 1;
                        isDrawerOp = false;
                      });
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  )
                      : IconButton(
                    onPressed: () {
                      setState(() {
                        xoffSet = 230;
                        yoffSet = 150;
                        scalFactor = 0.6;
                        isDrawerOp = true;
                      });
                    },
                    icon: Icon(Icons.menu),
                  ),
                  Column(
                    children: [
                      Text('location'),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          Text('Ukraine')
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextOneField(),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 120,
              child: ConatinerList(),
            ),
            ContainerOne(catogrey: artList,),
            ContainerTwo(catogery: artList,),
            // ContainerTwo(catogery: artList,),
          ],
        ),
      ),
    );
  }
}
