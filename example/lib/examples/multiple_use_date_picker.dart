import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class MultipleUseExample extends StatefulWidget {
  const MultipleUseExample({super.key});

  @override
  State<MultipleUseExample> createState() => _NewWidgetExampleState();
}

class _NewWidgetExampleState extends State<MultipleUseExample> {
  List<DateTime> _selectedDates = [DateTime(2024, 3, 18)];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        EasyDateTimeLineMultiplePicker(
          firstDate: DateTime(2024, 3, 18),
          lastDate: DateTime(2024, 5, 20),
          currentDates: [
            DateTime(2024, 3, 19),
            DateTime(2024, 3, 20),
          ],
          focusedDate: _selectedDates.isEmpty ? null : _selectedDates.last,
          onDateChange: (selectedDate) {
            setState(() {
              _selectedDates = selectedDate;
            });
          },
        ),
        const SizedBox(height: 32.0),
      ],
    );
  }
}
