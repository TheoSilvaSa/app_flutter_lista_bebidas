// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  BookmarkPageState createState() => BookmarkPageState();
}

class BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bebidas Favoritas"),
          backgroundColor: Colors.indigoAccent,
          iconTheme: IconThemeData(color: Colors.pink),
        ),
        body: Center(
          child: Text("Estou na página de favoritos"),
        ));
  }
}
