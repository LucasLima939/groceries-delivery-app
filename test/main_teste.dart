import 'package:flutter/material.dart';
import 'package:teste/abas/cadastro_page.dart';
import 'package:teste/abas/login_page.dart';

import 'layout/home_page.dart';
import 'layout/layout_teste.dart';

void main() => runApp(AppTeste());

class AppTeste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CadastroPage(),
    );
  }
}
