import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<StatefulWidget> createState() => MySwitchState();
}

class MySwitchState extends State<MySwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwitchListTile(
          title: Text(
            isSwitched ? 'On' : 'Off',
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          value: isSwitched,
          activeColor: Colors.green.shade600,
          activeTrackColor: Colors.green.shade200,
          inactiveThumbColor: Colors.grey,
          inactiveTrackColor: Colors.grey.shade50,
          onChanged: (value) => onChanged(value),
        ),
      ],
    );
  }

  onChanged(value) {
    setState(() {
      isSwitched = value;
    });
  }
}