import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Models/Sound.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyCard.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyContainer.dart';
import 'package:my_first_app/Widgets/ListViewAndGridView/Items/MyListTile.dart';

class MyListView extends StatefulWidget {
  MyListView():super(key: myListViewKey);

  @override
  State<StatefulWidget> createState() => MyListViewState();
}

class MyListViewState extends State<MyListView>{
  List<Sound> mySounds = [];

  @override
  void initState() {
    super.initState();
    mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.orange.shade50,
      child: ListView.builder(
        shrinkWrap: true,
        reverse: false,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: sounds.length,
        itemBuilder: (context, index) {
          Sound sound = mySounds[index];
          return Dismissible(
            key: ObjectKey(sound),
            direction: DismissDirection.startToEnd,
            child: MyListTile(sound, index, remove),
            onDismissed: (direction) {
              remove(sound);
            },
          );
        },
      ),
    );
  }

  add(Sound sound) {
    setState(() {
      mySounds.add(sound);
    });
  }

  update(Sound sound, int index) {
    setState(() {
      mySounds[index] = sound;
    });
  }

  remove(Sound sound) {
    setState(() {
      mySounds.remove(sound);
    });
  }
  
}