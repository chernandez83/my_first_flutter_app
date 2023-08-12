import 'package:flutter/material.dart';
import 'package:my_first_app/Common/MyKeys.dart';
import 'package:my_first_app/Models/Sound.dart';
typedef VoidCallbackParam = Function(Sound sound);

class MyListTile extends StatelessWidget {
  Sound sound;
  int index;
  VoidCallbackParam voidCallbackParam;

  MyListTile(this.sound, this.index, this.voidCallbackParam, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(sound.title), //, style: const TextStyle(fontSize: 25),),
      subtitle: Text(sound.author), //, style: const TextStyle(fontSize: 17),),
      //leading: const Icon(Icons.favorite_outline),
      leading: IconTheme(
        data: Theme.of(context).primaryIconTheme,
        child: const Icon(Icons.favorite_outline),
      ),
      trailing: InkWell(
        onTap: () => myListViewKey.currentState?.remove(sound),
        child: const Icon(
          Icons.close,
          color: Colors.blueGrey,
        ),
      ),
      onTap: () => myListViewKey.currentState?.update(sound..title='Modificado', index),
      onLongPress: () {
        print('LongPress en ListTile');
      },
    );
  }
  
}