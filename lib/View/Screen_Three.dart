import 'package:flutter/material.dart';
import 'package:pet_setup_app/Model/ItemModel.dart';
import 'package:pet_setup_app/View/Animated_Container.dart';
import 'package:pet_setup_app/condiguration.dart';
import 'package:pet_setup_app/widget/Align_StackBottom.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key, required this.artwo});
  final List<ItemModel> artwo;
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
                color: Colors.orange[100],
              )),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 70,left: 20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Maye Berkovskaya',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(fontSize: 15),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'owner',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                        color: Colors.grey.withOpacity(0.4)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            'May,25,2019',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 14,
                                  color: Colors.grey.withOpacity(0.4),
                                ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "My job requires moving to another country. i don't have the opportunity to take the cat with me. I am looking for  good people who will  shelter my  Sola",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 18,
                              color: Colors.grey.withOpacity(0.4),
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share_outlined,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Hero(
                    tag: 3,
                    child: Image.asset(
                      'assets/pet-cat2.png',
                      height: 300,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        artwo.length,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: 5, bottom: 20),
                          child: AnimatedLIneContainer(
                              isActive: index == is_index),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: shadowList,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Orion',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(fontSize: 24),
                        ),
                        Icon(Icons.male, color: Colors.grey[400], size: 32),
                      ],
                    ),
                    Text(
                      'Abyssinian cat',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontSize: 14,
                              ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: primaryGreen,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '5 Bulvarno-Kudriavska Street,Kyiv',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: Colors.grey.withOpacity(0.7),
                                  fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          AlignStackBottom(),
        ],
      ),
    );
  }
}
