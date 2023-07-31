import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.deepOrangeAccent,
      foregroundColor: Colors.yellowAccent,
      elevation: 20,
      tooltip: "Agregar",
      onPressed: () {
        print('Click en FloatingActionButton');
      },
      icon: const Icon(
          Icons.add_circle,
          size: 40
      ),
      label: const Text(
        "Agregar usuario",
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
