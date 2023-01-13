import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SliderSecondScreen extends StatefulWidget {
const SliderSecondScreen({ Key? key }) : super(key: key);

  @override
  State<SliderSecondScreen> createState() => _SliderSecondScreenState();
}

class _SliderSecondScreenState extends State<SliderSecondScreen> {
  double newValue = 40.0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
       body: SfSlider(
       min: 0.0,
       max: 100.0,
       value: newValue,
       interval: 20,
       showTicks: true,
       showLabels: true,
       enableTooltip: true,
       minorTicksPerInterval: 1,
       onChanged: (dynamic value){
         setState(() {
           newValue = value;
         });
       },
     ),
    );
  }
}