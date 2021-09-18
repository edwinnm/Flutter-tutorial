import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle estiloTexto = new TextStyle(fontSize: 25);
  final conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        centerTitle: true,
        elevation: 0.9,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Número de taps:",
            style: estiloTexto,
          ),
          Text(
            '$conteo',
            style: estiloTexto,
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // conteo = conteo + 1;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
