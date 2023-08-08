import 'package:flutter/material.dart';
import 'package:my_first_app/Models/Sound.dart';

class MyAlbumCard extends StatelessWidget {
  Sound sound;
  MyAlbumCard(this.sound, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 25,
      shadowColor: Colors.deepOrangeAccent,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
          color: Colors.deepOrangeAccent,
          width: 5,
        ),
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Image.asset(
            sound.cover,
            fit: BoxFit.cover,
          ),
          Text(
            sound.author,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  color: Colors.black,
                  blurRadius: 5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}