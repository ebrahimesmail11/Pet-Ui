import 'package:flutter/material.dart';
import 'package:pet_setup_app/condiguration.dart';

class AnimatedLIneContainer extends StatelessWidget {
  AnimatedLIneContainer({super.key, required this.isActive});
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      //alignment: Alignment.centerRight,
      duration: Duration(
        milliseconds: 250,
      ),
      width: isActive ? 14 : 6,
      height: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isActive?primaryGreen:Colors.white,
      ),
    );
  }
}
