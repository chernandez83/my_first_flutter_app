import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<StatefulWidget> createState() => MyFormState();
}

class MyFormState extends State<MyForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController ctrlName = TextEditingController();
  TextEditingController ctrlEmail = TextEditingController();
  TextEditingController ctrlMobile = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();
  TextEditingController ctrlRepeatPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: ctrlName,
            decoration: const InputDecoration(
              labelText: 'Nombre',
            ),
            keyboardType: TextInputType.text,
            validator: validateName,
          ),
          TextFormField(
            controller: ctrlEmail,
            decoration: const InputDecoration(
              labelText: 'Correo',
            ),
            keyboardType: TextInputType.emailAddress,
            validator: validateEmail,
          ),
          TextFormField(
            controller: ctrlMobile,
            decoration: const InputDecoration(
              labelText: 'Teléfono',
            ),
            keyboardType: TextInputType.number,
            validator: validateMobile,
          ),
          TextFormField(
            controller: ctrlPassword,
            decoration: const InputDecoration(
              labelText: 'Contraseña',
            ),
            keyboardType: TextInputType.text,
            obscureText: true,
            validator: validatePassword,
          ),
          TextFormField(
            controller: ctrlRepeatPassword,
            decoration: const InputDecoration(
              labelText: 'Repetir contraseña',
            ),
            keyboardType: TextInputType.text,
            obscureText: true,
            validator: validateRepeatPassword,
          ),
          ElevatedButton(
            onPressed: () => save(),
            child: const Text('Guardar'),
          ),
        ],
      ),
    );
  }

  save() {
    if(formKey.currentState!.validate()) {
      print('Nombre: ${ctrlName.text}');
      print('Email: ${ctrlEmail.text}');
      print('Teléfono: ${ctrlMobile.text}');
      print('Contraseña: ${ctrlPassword.text}');
      print('Repetir contraseña: ${ctrlRepeatPassword.text}');
      formKey.currentState!.reset();
    }
  }

  String? validateName(String? value) {
    if(value.toString().isEmpty) {
      return 'El nombre es obligatorio';
    }
    return null;
  }

  String? validateEmail(String? value) {
    String pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExpEmail = RegExp(pattern);

    if(value.toString().isEmpty) {
      return 'El correo es obligatorio';
    } else if(!regExpEmail.hasMatch(value.toString())) {
      return 'El correo no es válido';
    }
    return null;
  }

  String? validateMobile(String? value) {
    if(value.toString().isEmpty) {
      return 'El número de teléfono es obligatorio';
    } else if(value.toString().length != 10) {
      return 'El número de teléfono debe tener 10 dígitos';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if(value.toString().isEmpty) {
      return 'La contraseña es obligatorio';
    }
    return null;
  }

  String? validateRepeatPassword(String? value) {
    if(value.toString().isEmpty) {
      return 'La contraseña es obligatorio';
    } if (value.toString() != ctrlPassword.text.toString()) {
      return 'Las contraseñas no coinciden';
    }
    return null;
  }

}