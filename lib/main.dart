import 'package:first_final/home_page.dart';
import'package:flutter/material.dart';
//import 'home_page.dart';
import 'dart:math' as math;
Color ? _color;
void main(){
  runApp(MyApp());
}
//class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  Color _color = Colors.white;


  void changeColor(){
    setState(() {
      _color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(
        backgroundColor: _color,
        body: HomeScreen(changeColor: changeColor,),)),
    );
  }
}


