import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircularPercentageIndicatorScreen extends StatefulWidget {
  const CircularPercentageIndicatorScreen({Key? key}) : super(key: key);

  @override
  State<CircularPercentageIndicatorScreen> createState() => _CircularPercentageIndicatorScreenState();
}

class _CircularPercentageIndicatorScreenState extends State<CircularPercentageIndicatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 5.0,
                percent: 0.25,
                center: const Text(""),
                progressColor: Colors.green,
              ),
              CircularPercentIndicator(
                radius: 100.0,
                lineWidth: 10.0,
                percent: 0.8,
                header: const Text("Icon header"),
                center: const Icon(
                  Icons.person_pin,
                  size: 50.0,
                  color: Colors.blue,
                ),
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
              CircularPercentIndicator(
                radius: 130.0,
                animation: true,
                animationDuration: 1200,
                lineWidth: 15.0,
                percent: 0.4,
                center: const Text(
                  "40 hours",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: Colors.yellow,
                progressColor: Colors.red,
              ),
              CircularPercentIndicator(
                radius: 120.0,
                lineWidth: 13.0,
                animation: true,
                percent: 0.7,
                center: const Text(
                  "70.0%",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                footer: const Text(
                  "Sales this week",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.purple,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 1.0,
                  center: const Text("100%"),
                  progressColor: Colors.green,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 4.0,
                        percent: 0.10,
                        center: const Text("10%"),
                        progressColor: Colors.red,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 4.0,
                        percent: 0.30,
                        center: const Text("30%"),
                        progressColor: Colors.orange,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 4.0,
                        percent: 0.60,
                        center: const Text("60%"),
                        progressColor: Colors.yellow,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                      CircularPercentIndicator(
                        radius: 45.0,
                        lineWidth: 4.0,
                        percent: 0.90,
                        center: const Text("90%"),
                        progressColor: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
              LinearPercentIndicator(
                width: 260.0,
                lineHeight: 14.0,
                percent: 0.8,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: LinearPercentIndicator(
                  width: 140.0,
                  lineHeight: 14.0,
                  percent: 0.5,
                  center:  const Text(
                    "50.0%",
                    style: TextStyle(fontSize: 12.0),
                  ),
                  trailing: const Icon(Icons.mood),
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blue,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: LinearPercentIndicator(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
