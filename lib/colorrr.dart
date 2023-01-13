import 'package:flutter/material.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';

class Colorrr extends StatefulWidget {
const Colorrr({ Key? key }) : super(key: key);

  @override
  State<Colorrr> createState() => _ColorrrState();
}

class _ColorrrState extends State<Colorrr> {
    Color _currentColor = Colors.blue;
  final _controller = CircleColorPickerController(
    initialColor: Colors.blue,
  );

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          backgroundColor: _currentColor,
          title: const Text('Circle color picker sample'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 48),
            Center(
              child: CircleColorPicker(
                controller: _controller,
                onChanged: (color) {
                  setState(() => _currentColor = color);
                },
              ),
            ),
            const SizedBox(height: 48),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: () => _controller.color = Colors.blue,
                  child: const Text('BLUE', style: TextStyle(color: Colors.blue)),
                ),
                TextButton(
                  onPressed: () => _controller.color = Colors.green,
                  child: const Text('GREEN', style: TextStyle(color: Colors.green)),
                ),
                TextButton(
                  onPressed: () => _controller.color = Colors.red,
                  child: const Text('RED', style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
          ],
        ),
      );
    
  }
}