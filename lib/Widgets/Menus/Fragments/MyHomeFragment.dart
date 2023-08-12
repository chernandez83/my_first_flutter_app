import 'package:flutter/material.dart';

class MyHomeFragment extends StatelessWidget {
  const MyHomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway',
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }

}