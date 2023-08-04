import 'package:flutter/material.dart';
import 'package:my_first_app/Models/Sound.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Actividad/MyAlbumCard.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';

class MyAlbumListView extends StatelessWidget {
  const MyAlbumListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(20),
      itemCount: sounds.length,
      itemBuilder: (context, index) => MyAlbumCard(sounds[index]),
    );
  }

}