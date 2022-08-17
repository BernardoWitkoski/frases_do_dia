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

  void _gerarFrase() {
    print("botao");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/frasesDoDia.png"),
            Text(_fraseGerada,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                elevation: 1,
                fixedSize: Size(220.0, 80.0),
              ),
              onPressed: _gerarFrase,
              child: Text(
                "Nova frase",
                style: TextStyle(fontSize: 20),
              ))
          ],
        ),
      ),
      )
    );
  }
}
