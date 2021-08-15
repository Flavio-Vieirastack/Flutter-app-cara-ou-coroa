import 'package:cara_ou_coroa_app/resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _exibirResultado() {
    var _itens = ['cara', 'coroa'];
    var _numeros = Random().nextInt(_itens.length);
    var resultadorandom = _itens[_numeros];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(resultadorandom)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/logo.png'), //imagem logo

            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset('images/botao_jogar.png'),
            )
          ],
        ),
      ),
    );
  }
}
