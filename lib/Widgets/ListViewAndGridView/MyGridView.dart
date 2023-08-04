import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 50,
        mainAxisSpacing: 50,
      ),
      itemCount: 30,
      itemBuilder: (context, index) => const MyCard(),
    );
  }
  
}