import 'package:flutter/material.dart';

class ListadoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listado en Flutter'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Item 1'),
            leading: Icon(Icons.circle),
            trailing: Icon(Icons.navigate_next_outlined),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Item 1'),
            leading: Icon(Icons.circle),
            trailing: Icon(Icons.navigate_next_outlined),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Item 1'),
            leading: Icon(Icons.circle),
            trailing: Icon(Icons.navigate_next_outlined),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Item 1'),
            leading: Icon(Icons.circle),
            trailing: Icon(Icons.navigate_next_outlined),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
