import 'package:flutter/material.dart';
import 'package:pet_setup_app/View/DrawerScreen.dart';
import 'package:pet_setup_app/View/Home_Page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomePage(),
        ],
      ),
    );
  }
}
