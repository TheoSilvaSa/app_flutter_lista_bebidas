// ignore_for_file: prefer_const_constructors

import 'package:app_flutter_lista_bebidas/widget/bookmark_beer_page.dart';
import 'package:app_flutter_lista_bebidas/widget/formulario_beer_page.dart';
import 'package:app_flutter_lista_bebidas/widget/list_beer_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  final menuNavegacaoOpcoes = [
    FormularioBeerPage(),
    ListBeerPage(),
    BookmarkPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Bebidas"),
        backgroundColor: Colors.orange,
        iconTheme: IconThemeData(color: Colors.pink),
      ),
      body: Center(
        //child: Text("Meu primeiro aplicativo em Flutter"),
        child: menuNavegacaoOpcoes.elementAt(itemSelecionado),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle), label: "Adicionar"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Listar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add), label: "Favoritos")
        ],

        currentIndex: itemSelecionado,
        fixedColor: Colors.deepPurple,
        onTap: nomeFuncaoOperacao,
      ),
    );
  }

  void nomeFuncaoOperacao(int index) {
    setState(() {
      itemSelecionado = index;
    });
  }
}
