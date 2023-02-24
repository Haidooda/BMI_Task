
import 'dart:math';

import 'package:first_final/resources.dart';
import 'package:first_final/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? _isMale = null;
  int _height = 180;
  int _wieght = 60;
  int _age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        leading: const Icon(Icons.fastfood_rounded),
        titleSpacing: 0,
        title: const Text("BMindex"),
        elevation: 0,
        backgroundColor: AppColors.backGroundColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: _buildGenderRow(),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: _buildAgeContainer(),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: _buildWeightAgeRow(),
          )),
          _buildBtn(),
        ],
      ),
    );
  }

  Widget _buildBtn() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
      child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor),
          onPressed: _onTap,
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("Calculte"),
          )),
    );
  }

  Widget _buildGenderRow() {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                _isMale = true;
              });
            },
            child: _buildContainer(
                color: _isMale == true ? AppColors.primaryColor : null,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.male, color: Colors.white, size: 70),
                    Text(
                      "male",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white),
                    )
                  ],
                )),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                _isMale = false;
              });
            },
            child: _buildContainer(
                color: _isMale == false ? AppColors.primaryColor : null,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.female, color: Colors.white, size: 70),
                    Text(
                      "female",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white),
                    )
                  ],
                )),
          ),
        ),
      ],
    );
  }

  Widget _buildContainer({required Widget child, Color? color}) => Container(
        decoration: BoxDecoration(
          color: color ?? Colors.tealAccent.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: child,
      );

  Widget _buildAgeContainer() {
    return _buildContainer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Height",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(_height.toString(),
                style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    textBaseline: TextBaseline.alphabetic)),
            Text(
              "cm",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white, textBaseline: TextBaseline.alphabetic),
            ),
          ],
        ),
        Slider(
            value: _height.toDouble(),
            onChanged: (val) {
              setState(() {
                _height = val.round();
              });
            },
            min: 1,
            max: 200,
            inactiveColor: AppColors.greyColor,
            activeColor: AppColors.primaryColor),
      ],
    ));
  }

  Widget _buildWeightAgeRow() {
    return Row(
      children: [
        Expanded(
          child: _buildContainer(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "weight",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              ),
              Text(
                _wieght.toString(),
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _wieght--;
                        if (_wieght <= 0) _wieght = 1;
                      });
                    },
                    child: const Icon(Icons.minimize),
                    backgroundColor: AppColors.fabColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _wieght++;
                      });
                    },
                    backgroundColor: AppColors.fabColor,
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          )),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: _buildContainer(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Age",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              ),
              Text(
                _age.toString(),
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    backgroundColor: AppColors.fabColor,
                    onPressed: () {
                      setState(() {
                        _age--;
                        if (_age <= 0) _age = 1;
                      });
                    },
                    child: const Icon(Icons.minimize),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton(
                    backgroundColor: AppColors.fabColor,
                    onPressed: () {
                      setState(() {
                        _age++;
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          )),
        ),
      ],
    );
  }

  void _onTap() {
    if (_isMale != null) {
      var indicator = (_wieght / pow((_height / 100), 2));
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ResultPage(
                result: indicator,
              )));
    } else {
      var snackBar = const SnackBar(content: Text("Please choose gender"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
