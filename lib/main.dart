import 'package:flutter/material.dart';
import 'package:pet_setup_app/HomeScreen.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Circular",
      ),
      home: HomeScreen(),
    );
  }
}

