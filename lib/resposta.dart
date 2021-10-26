import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelect;

  // ignore: use_key_in_widget_constructors
  const Resposta(this.texto, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: onSelect,
        child: Text(texto),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
        ),
      ),
    );
  }
}
