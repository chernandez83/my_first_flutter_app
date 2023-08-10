import 'package:flutter/material.dart';
import 'package:my_first_app/Widgets/Forms/Actividad/MyFormActividad.dart';

class LoginPageAlt extends StatefulWidget {
  const LoginPageAlt({super.key});

  @override
  State<StatefulWidget> createState() => LoginPageAltState();
}

class LoginPageAltState extends State<LoginPageAlt>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'www.borrachos.com',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    color: Colors.orange.shade800,
                    shadows: const [
                      Shadow(
                        color: Colors.white,
                        offset: Offset(5, 5),
                        blurRadius: 5,
                      ),
                    ]
                  ),
                ),
                const Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.wine_bar_outlined,
                        color: Colors.white,
                        size: 150,
                      ),
                    ),
                    Icon(
                      Icons.wine_bar,
                      color: Colors.deepOrangeAccent,
                      size: 150,
                    ),
                  ],
                ),
                const MyFormActividad(),
              ],
            ),
          ),
        ),
      ),
    );
  }

}