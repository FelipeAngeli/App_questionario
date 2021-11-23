import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  // ignore: use_key_in_widget_constructors
  const Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //container
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          ),
          onPressed: quandoSelecionado, //parametro ao clicar o botão
          child: Text(
            texto,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
