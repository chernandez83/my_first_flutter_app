import 'package:flutter/material.dart';

class NowPlaying extends StatelessWidget {
  const NowPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Image.asset('assets/images/luna.png', height: 250,),
              Image.asset('assets/images/catrina.png', height: 150,)
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("This is Hallowen", style: TextStyle(fontSize: 30),),
                  Text("Simone Simons", style: TextStyle(fontSize: 25),)
                ],
              ),
              Icon(Icons.favorite, size: 40, color: Colors.red,)
            ],
          ),
          const Text('00:29', style: TextStyle(fontSize: 40),),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.repeat, size: 45, color: Colors.black26,),
              Icon(Icons.skip_previous, size: 45, color: Colors.black,),
              Icon(Icons.pause_circle, size: 45, color: Colors.black,),
              Icon(Icons.skip_next, size: 45, color: Colors.black,),
              Icon(Icons.volume_up, size: 45, color: Colors.black,),
            ],
          ),
        ],
      ),
    );
  }

}