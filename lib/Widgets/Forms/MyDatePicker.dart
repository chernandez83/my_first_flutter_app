import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  State<StatefulWidget> createState() => MyDatePickerState();
}

class MyDatePickerState extends State<MyDatePicker> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => selectDate(),
          child: const Text(
            'Seleccionar fecha',
            style: TextStyle(
              fontSize: 20,
            ),
          )
        ),
        Text(
          DateFormat('dd-MM-yyyy').format(selectedDate),
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ],
    );
  }

  selectDate() async {
    DateTime? dateTime = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(DateTime.now().year + 5, DateTime.now().month, DateTime.now().day),
    );

    if(dateTime != null && selectedDate != dateTime) {
      setState(() {
        selectedDate = dateTime;
      });
    }
  }

}