

import 'package:first_final/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.result}) : super(key: key);

  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Your result",
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Colors.white,
                  ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: _buildContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        _indicatorText(result),
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: AppColors.greenColor,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        result.toStringAsFixed(2),
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'your body weight is absoultly normal, good jop',
                          style: Theme.of(context).textTheme.caption!.copyWith(
                                color: Colors.white,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            _buildBtn(),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer({required Widget child, Color? color}) => Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color ?? Colors.tealAccent.withOpacity(0.2),
          borderRadius: BorderRadius.circular(15),
        ),
        child: child,
      );

  Widget _buildBtn() {
    return Builder(
      builder: (context) {
        return ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Recalculte"),
            ));
      }
    );
  }

  String _indicatorText(double res) {
    if (res < 18.5) return 'UnderWeight';
    if (res < 24.9) return 'normal';
    if (res < 29.9) return 'overweight';
    if (res < 34.9) return 'obesity 1st';
    if (res < 39.9) return 'obesity 2nd';
    return 'extreme';
  }
}
