import 'package:flutter/material.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';

class NowPlayingPage extends StatefulWidget {
  const NowPlayingPage({super.key});

  @override
  State<StatefulWidget> createState() => NowPlayingPageState();
}

class NowPlayingPageState extends State<NowPlayingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "NowPlayingPage",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              ElevatedButton(
                child: const Text(
                  "MyHomePage",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const MyHomePage(title: "Hola",),
                  )
                  ),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}