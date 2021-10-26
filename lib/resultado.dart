import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!\nSua pontuação foi $pontuacao.';
    } else if (pontuacao < 12) {
      return 'Você é bom!\nSua pontuação foi $pontuacao.';
    } else if (pontuacao < 16) {
      return 'Impressionante!\nSua pontuação foi $pontuacao.';
    } else {
      return 'Nivel Jedi!\nSua pontuação foi $pontuacao.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          child: const Text('Reiniciar'),
          onPressed: reiniciarQuestionario,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
          ),
        )
      ],
    );
  }
}
