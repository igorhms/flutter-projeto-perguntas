import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelect;

  Resposta(this.texto, this.onSelect);

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
