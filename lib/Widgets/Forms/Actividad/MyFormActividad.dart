import 'package:flutter/material.dart';

class MyFormActividad extends StatefulWidget {
  const MyFormActividad({super.key});

  @override
  State<StatefulWidget> createState() => MyFormActividadState();

}

class MyFormActividadState extends State<MyFormActividad> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController ctrlEmail = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();
  FocusNode focusEmail = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: ctrlEmail,
              validator: validateEmail,
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              focusNode: focusEmail,
              textAlign: TextAlign.left,
              textAlignVertical: TextAlignVertical.top,
              decoration: const InputDecoration(
                labelText: 'Correo',
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
                hintText: 'Correo electrónico',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.email,
                    color: Colors.deepOrangeAccent,
                    size: 20,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepOrangeAccent,
                  )
                ),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 5,
                    )
                ),
                errorStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: ctrlPassword,
              validator: validatePassword,
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              autofocus: false,
              textAlign: TextAlign.left,
              textAlignVertical: TextAlignVertical.top,
              decoration: const InputDecoration(
                labelText: 'Contraseña',
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
                hintText: 'Contraseña',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.lock,
                    color: Colors.deepOrangeAccent,
                    size: 20,
                  ),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepOrangeAccent,
                    )
                ),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 5,
                    )
                ),
                errorStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 5, bottom: 40),
              child: RichText(
                text: const TextSpan(
                  text: '¿Olvidaste tu contraseña? ',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Raleway',
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '¡Recúperala!',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                          shadows: [
                            Shadow(
                              color: Colors.white,
                              offset: Offset(2,2),
                              blurRadius: 5,
                            ),
                          ]
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => validateForm(),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
            ),
            child: const Text(
              'Iniciar Sesión',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  validateForm() {
    if(formKey.currentState!.validate()) {
      print('Correo: ${ctrlEmail.text}');
      print('Contraseña: ${ctrlPassword.text}');
      formKey.currentState!.reset();
      FocusScope.of(context).requestFocus(focusEmail);
    }
  }

  String? validateEmail(String? value) {
    String pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExpEmail = RegExp(pattern);

    if(value.toString().isEmpty) {
      return 'El correo electrónico es obligatorio';
    } else if(!regExpEmail.hasMatch(value.toString())) {
      return 'El correo electrónico no es válido';
    }

    return null;
  }

  String? validatePassword(String? value) {

    if(value.toString().isEmpty){
      return 'La contraseña es obligatoria';
    }

    return null;
  }

}