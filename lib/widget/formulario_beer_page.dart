// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FormularioBeerPage extends StatefulWidget {
  const FormularioBeerPage({Key? key}) : super(key: key);

  @override
  FormularioBeerPageState createState() => FormularioBeerPageState();
}

class FormularioBeerPageState extends State<FormularioBeerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Adicione sua bebida"),
          backgroundColor: Colors.indigoAccent,
          iconTheme: IconThemeData(color: Colors.pink),
        ),
        body: Center(
          child: Text("Estou na página de formulário"),
        ));
  }
}
