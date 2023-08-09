import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<StatefulWidget> createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {
  TextEditingController ctrlName = TextEditingController();
  TextEditingController ctrlEdad = TextEditingController();
  String name = '';
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        TextField(
          focusNode: node1,
          controller: ctrlName,
          autofocus: true,
          keyboardType: TextInputType.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade700,
          ),
          maxLength: 12,
          maxLines: 1,
          obscureText: true,
          decoration: InputDecoration(
            enabled: true,
            prefix: const Icon(Icons.key),
            hintText: "Nombre",
            labelText: "Nombre",
            labelStyle: const TextStyle(
              color: Colors.deepOrangeAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
                width: 5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.orange,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 5,
              ),
            ),
          ),
        ),
        TextField(
          focusNode: node2,
          controller: ctrlEdad,
          autofocus: true,
          keyboardType: TextInputType.number,
        ),
        ElevatedButton(
          onPressed: () {
            FocusScope.of(context).requestFocus(node2);
            setState(() {
              name = ctrlName.text.toString();
            });
          },
          child: const Text(
            'Guardar',
            style: TextStyle(
              fontSize: 20,
            ),
          )
        ),
      ],
    );
  }

}