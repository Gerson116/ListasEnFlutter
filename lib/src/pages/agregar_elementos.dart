import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';

class AgregarElementoPages extends StatefulWidget {
  @override
  createState() => _AgregarElementoState();
}

class _AgregarElementoState extends State<AgregarElementoPages> {
  //...
  TextStyle _estiloTextos = TextStyle(fontSize: 20.0);
  List<Widget> _chats = <Widget>[];
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Lista dinamica',
        style: _estiloTextos,
      )),
      body: ListaDeChat(),
      floatingActionButton: BotonAgregar(),
      bottomNavigationBar: BottomAppBar(
        child: Text(DateTime.now().toString()),
      ),
    );
  }

  Widget ListaDeChat() {
    return ListView(children: _chats);
  }

  Widget BotonAgregar() {
    return FloatingActionButton(
      onPressed: AgregarElemento,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }

  void AgregarElemento() {
    //...
    //... ¿Que es un List.from()?
    //... De esta manera es como se puede hacer que se redibuje nuestra lista
    //... estio se debe a que
    setState(() {
      contador++;
      print(contador);
      _chats = List.from(_chats)
        ..add(NuevoChat(contador))
        ..add(Divider());
    });
  }

  Widget NuevoChat(int contador) {
    return ListTile(
      leading: Icon(
        Icons.circle,
        color: Colors.green[100],
      ),
      title: Text('Chat $contador'),
      trailing: Icon(Icons.arrow_right),
      onTap: (() => {}),
    );
  }
}
