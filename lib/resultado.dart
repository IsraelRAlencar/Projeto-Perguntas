import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Resultado extends StatelessWidget {
  final int pontuacao;

  const Resultado(this.pontuacao, {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(fraseResultado, style: const TextStyle(fontSize: 28)),
    );
  }
}
