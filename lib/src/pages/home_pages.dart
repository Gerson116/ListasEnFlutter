import 'package:flutter/material.dart';

import 'listado_page.dart';
import 'agregar_elementos.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: ListadoPage(),
      debugShowCheckedModeBanner: false,
      home: AgregarElementoPages(),
    );
  }
}
