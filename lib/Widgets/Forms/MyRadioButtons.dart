import 'package:flutter/material.dart';

class MyRadioButtons extends StatefulWidget {
  const MyRadioButtons({super.key});

  @override
  State<StatefulWidget> createState() => MyRadioButtonsState();
}

class MyRadioButtonsState extends State<MyRadioButtons> {
  String currentValue = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: "Opción 1",
          title: Text("Opción 1"),
          groupValue: currentValue,
          onChanged: (value) {
            onChanged(value);
          }
        ),
        RadioListTile(
            value: "Opción 2",
            title: Text("Opción 2"),
            groupValue: currentValue,
            onChanged: (value) {
              onChanged(value);
            }
        ),
        RadioListTile(
            value: "Opción 3",
            title: Text("Opción 3"),
            groupValue: currentValue,
            onChanged: (value) {
              onChanged(value);
            }
        ),
        Text(
          currentValue,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ],
    );
  }

  onChanged (value) {
    setState(() {
      currentValue = value.toString();
    });
  }
}