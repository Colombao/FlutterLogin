import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MinhaPagina(),
  ));
}

class MinhaPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Página'),
      ),
      body: Center(
      ),
    );
  }
}

class ProximaPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Próxima Página'),
      ),
      body: Center(
        child: Text('Você está na próxima página!'),
      ),
    );
  }
}
