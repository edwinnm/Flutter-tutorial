import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("StateFullWigget"),
          centerTitle: true,
          elevation: 0.9,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Número de taps:",
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloTexto,
            )
          ]),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      children: [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sub),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

  void _reset() {
    setState(() {
      _conteo = 0;
    });
  }

  void _sub() {
    setState(() {
      _conteo--;
    });
  }

  void _add() {
    setState(() {
      _conteo++;
    });
  }
}
