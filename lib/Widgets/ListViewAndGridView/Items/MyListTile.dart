import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('This is Halloween', style: TextStyle(fontSize: 25),),
      subtitle: const Text('By Simone Simons', style: TextStyle(fontSize: 17),),
      trailing: const Icon(Icons.more_vert),
      leading: const Icon(Icons.favorite_outline),
      onTap: () {
        print('Tap en ListTile');
      },
      onLongPress: () {
        print('LongPress en ListTile');
      },
    );
  }
  
}