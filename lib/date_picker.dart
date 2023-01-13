import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
//  final  Color CircleColorPicker=Colors.amber;
  Color _currentColor = Colors.pink;
  final _controller = CircleColorPickerController(
    initialColor: Colors.yellow,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          children: [
            DateTimePicker(
              type: DateTimePickerType.dateTimeSeparate,
              dateMask: 'd MMM, yyyy',
              initialValue: DateTime.now().toString(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
              icon: const Icon(Icons.event),
              dateLabelText: 'Date',
              timeLabelText: "Hour",
              selectableDayPredicate: (date) {
                // Disable weekend days to select from the calendar
                if (date.weekday == 6 || date.weekday == 7) {
                  return false;
                }

                return true;
              },
              onChanged: (val) => debugPrint(val),
              validator: (val) {
                debugPrint(val);
                return null;
              },
              onSaved: (val) => debugPrint(val),
            ),
            DateTimePicker(
              initialValue: '',
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
              dateLabelText: 'Date',
              onChanged: (val) => debugPrint(val),
              validator: (val) {
                debugPrint(val);
                return null;
              },
              onSaved: (val) => debugPrint(val),
            ),
            ElevatedButton(
              onPressed: () {
                Center(
                  child: CircleColorPicker(
                    controller: _controller,
                    onChanged: (color) {
                      setState(() => _currentColor = color);
                    },
                  ),
                );
              },
              child: Text("color"),
            ),
          ],
        ),
      ),
    );
  }
}
