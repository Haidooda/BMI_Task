
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import'package:first_final/main.dart';
class HomeScreen extends StatelessWidget {
  VoidCallback? changeColor;

  var _color;
  HomeScreen({Key? key, this.changeColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeColor,
      child: Center(
        child: Container(
          color: _color,
          height: double.infinity,
          width: double.infinity,
          child: const Center(
            child: Text(
              'Hey there',
            ),
          ),
        ),
      ),
    );
  }
}

