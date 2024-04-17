import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: 7, // Número total de itens na grade, incluindo o botão "+"
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            // Primeiro item: botão "+" para adicionar nova foto
            return Container(
              color: Colors.grey[300],
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 48,
                  color: Colors.blue,
                ),
              ),
            );
          } else {
            // Outros itens: fotos
            return GestureDetector(
              onTap: () {
                _showOptions(context, 'Foto $index'); // Passando o nome da foto
              },
              child: Container(
                color: Colors.grey[300],
                child: Center(
                  child: Text(
                    'Foto $index',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            );
          }
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Center(
            child: Text(
              'Bottom App Bar',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  void _showOptions(BuildContext context, String imageName) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Imagem em tela cheia
            Expanded(
              child: Container(
                color: Colors.black,
                child: Center(
                  child: imageName != null
                      ? Image.asset(
                    'assets/$imageName.png', // Substitua pelo caminho correto da sua imagem
                    fit: BoxFit.contain,
                  )
                      : SizedBox(),
                ),
              ),
            ),
            // Botões
            Container(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.login),
                    title: Text('Enviar para o Login'),
                    onTap: () {
                      // Implemente a lógica para enviar para o login
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.download),
                    title: Text('Baixar'),
                    onTap: () {
                      // Implemente a lógica para baixar a imagem
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text('Compartilhar'),
                    onTap: () {
                      // Implemente a lógica para compartilhar a imagem
                      Navigator.pop(context);
                    },
                  ),
                ], //
              ),
            ),
          ],
        );
      },
    );
  }
}
