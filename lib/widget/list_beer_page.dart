// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';

class ListBeerPage extends StatefulWidget {
  const ListBeerPage({Key? key}) : super(key: key);

  @override
  ListBeerPageState createState() => ListBeerPageState();
}

class ListBeerPageState extends State<ListBeerPage> {
  var pathArquivo = '/bebidas.json';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Bebidas"),
        backgroundColor: Colors.indigoAccent,
        iconTheme: IconThemeData(color: Colors.pink),
      ),
      body: Container(
          child: Center(
              //Recurso para consumir um dado de forma assincrona.
              //Teste recurso pode ser local ou remoto
              child: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString(pathArquivo),
        builder: (context, snapshot) {
          //Leu o arquivo e está atribuindo todos os dados para a variável bebidas;
          var bebidas = json.decode(snapshot.data.toString());

          return ListView.builder(
            itemBuilder: (context, index) {
              var bebida = bebidas[index];
              return Card(
                child: Text(bebida['name']),
              );
            },
            itemCount: bebidas == null ? 0 : bebidas.length,
          );
        },
      ))),
    );
  }
}
