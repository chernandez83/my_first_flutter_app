import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({super.key});

  @override
  State<StatefulWidget> createState() => MyDropdownButtonState();
}

class MyDropdownButtonState extends State<MyDropdownButton> {
  List<String> courses = ['Flutter','Dart','Python','JavaScript'];
  String currentValue = '';

  @override
  void initState() {
    super.initState();
    currentValue = courses[0];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton(
          value: currentValue,
          icon: const Icon(Icons.music_note),
          dropdownColor: Colors.orange.shade50,
          items: courses.map((String course) => DropdownMenuItem<String>(
            value: course,
            child: Text(course),
          )).toList(),
          onChanged: (String? value) {
            setState(() {
              if(value != null && currentValue != value) {
                currentValue = value;
              }
            });
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

}