import 'package:flutter/material.dart';
import 'package:pet_setup_app/condiguration.dart';

class AlignStackCenter extends StatelessWidget {
  const AlignStackCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.center,
      child: Container(
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: shadowList,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sola',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontSize: 24),
                  ),

                  Transform.scale(
                    scale: -1,
                    child: Icon(Icons.female,
                        color: Colors.grey[400], size: 32),
                  ),
                ],
              ),
              Text('Abyssinian cat',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 14,),),
              SizedBox(height: 2,),
              Row(
                children: [
                  Icon(Icons.location_on,color: primaryGreen,),
                  SizedBox(width: 2,),
                  Text('5 Bulvarno-Kudriavska Street,Kyiv',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey.withOpacity(0.7),fontSize: 15),),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
