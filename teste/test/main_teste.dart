import 'package:flutter/material.dart';

import 'povoando_lista/ofertas_page.dart';

void main() => runApp(AppTeste());

class AppTeste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OfertasPage(),
    );
  }
}
