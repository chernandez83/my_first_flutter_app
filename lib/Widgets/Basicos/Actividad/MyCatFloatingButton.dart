import 'package:flutter/material.dart';

class MyCatFloatingActionButton extends StatelessWidget {
  const MyCatFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.greenAccent,
      foregroundColor: Colors.deepOrangeAccent,
      hoverColor: Colors.deepOrange[100],
      elevation: 20,
      tooltip: "Tooltip",
      /*shape: const CircleBorder(
        side: BorderSide(
          color: Colors.deepOrangeAccent,
          width: 2,
        ),
      ),*/
      onPressed: () {
        print("Click en MyCatFloatingButton");
      },
      child: const Icon(
        Icons.liquor,
        size: 40,
      ),
    );
  }
}