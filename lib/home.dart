import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _frases = [
    "Não deixe para commitar amanhã o que se pode commitar hoje",
    "Muito ajuda quem não atrapalha!",
    "É só uma fase ruim, tudo irá piorar :)",
    "Lute como nunca, perca como sempre"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        
      ),
    );
  }
}
