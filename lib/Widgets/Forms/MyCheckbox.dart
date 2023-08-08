import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key});

  @override
  State<StatefulWidget> createState() => MyCheckboxState();
}

class MyCheckboxState extends State<MyCheckbox> {
  List<String> courses = ['Flutter','Dart','Python','JavaScript'];
  List<bool> isChecked = [];

  @override
  void initState() {
    isChecked = List<bool>.filled(courses.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
                value: isChecked[index],
                title: Text(courses[index]),
                onChanged: (value) {
                  setState(() {
                    isChecked[index] = value as bool;
                  });
                }
            );
          },
        ),
        Text(isChecked.toString()),
      ],
    );
  }

}