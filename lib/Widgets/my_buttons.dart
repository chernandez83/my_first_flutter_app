import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return myOutlinedButton();
  }

  myElevatedButton() {
    return ElevatedButton.icon(
      icon: const Icon(
        Icons.save,
        color: Colors.yellow,
      ),
      label: const Text(
        "Guardar",
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 10,
      ),
      onPressed: (){
        print("Click en ElevatedButton");
      },
      onLongPress: () {
        print("Click largo en ElevatedButton");
      },
    );
  }
  
  myTextButton() {
    return TextButton(
      onPressed: () {
        print("Click en TextButton");
      },
      onLongPress: () {
        print("Click largo en TextButton");
      },
      child: Text(
        "Guardar",
      ),
    );
  }

  myOutlinedButton() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: Colors.yellow,
          width: 3,
        ),
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      onPressed: () {
        print("Click en OutlinedButton");
      },
      child: Text(
        "Guardar",
      ),
    );
  }
}
