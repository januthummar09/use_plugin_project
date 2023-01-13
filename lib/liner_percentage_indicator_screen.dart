// dependencies: percent_indicator: ^4.2.2

import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class LinerPercentageIndicatorScreen extends StatefulWidget {
  const LinerPercentageIndicatorScreen({Key? key}) : super(key: key);

  @override
  State<LinerPercentageIndicatorScreen> createState() =>
      _LinerPercentageIndicatorScreenState();
}

class _LinerPercentageIndicatorScreenState
    extends State<LinerPercentageIndicatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LinearPercentIndicator(
                width: 140.0,
                lineHeight: 14.0,
                percent: 0.5,
                center: const Text(
                  "50.0%",
                  style: TextStyle(fontSize: 12.0),
                ),
                trailing: const Icon(Icons.mood),
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
                barRadius: const Radius.circular(50),
              ),
              LinearPercentIndicator(
                width: 170.0,
                animation: true,
                animationDuration: 1000,
                lineHeight: 20.0,
                leading: const Text("left content"),
                trailing: const Text("right content"),
                percent: 0.2,
                center: const Text("20.0%"),
                progressColor: Colors.red,
              ),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 3500,
                percent: 0.9,
                center: const Text("90.0%"),
                progressColor: Colors.greenAccent,
                barRadius: const Radius.circular(30),
              ),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.8,
                center: const Text("80.0%"),
                progressColor: Colors.green,
              ),
              LinearPercentIndicator(
                width: 100.0,
                lineHeight: 8.0,
                percent: 0.2,
                progressColor: Colors.red,
              ),
              LinearPercentIndicator(
                width: 100.0,
                lineHeight: 8.0,
                percent: 0.5,
                progressColor: Colors.orange,
              ),
              LinearPercentIndicator(
                width: 100.0,
                animation: true,
                animationDuration: 2500,
                lineHeight: 8.0,
                percent: 0.5,
                progressColor: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
