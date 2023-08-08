import 'package:flutter/material.dart';
import 'package:my_first_app/Common/HomeArguments.dart';
import 'package:my_first_app/Common/MyRouters.dart';
import 'package:my_first_app/Pages/MyHomePage.dart';
import 'package:my_first_app/Widgets/Forms/MyCheckbox.dart';
import 'package:my_first_app/Widgets/Forms/MyDatePicker.dart';
import 'package:my_first_app/Widgets/Forms/MyDropdownButton.dart';
import 'package:my_first_app/Widgets/Forms/MyRadioButtons.dart';
import 'package:my_first_app/Widgets/Forms/MySwitch.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login Page",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.resolveWith<double>((states) => 15),
                ),
                child: const Text(
                  "MyHomePage",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () => {
                  /*Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const MyHomePage(),
                    )
                  ),*/
                  Navigator.pushNamed(context, ROUTE_HOME, arguments: HomeArguments("Hola 2","Mensaje",)),
                },
              ),
              //const MyRadioButtons(),
              //const MyCheckbox(),
              //const MyDatePicker(),
              const MyDropdownButton(),
              const MySwitch(),
            ],
          ),
        ),
      ),
    );
  }
}