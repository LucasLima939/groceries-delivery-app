/*
  Criei um arquivo separado pra cada coisa pra ficar tudo mais organizado.
  home_widget é toda a tela inicial do 'home', e contém:
    AppBar(barra superior) e BottomNavigationBar(barra inferior);
    Método onTabTapped
  Pra detalhes específicos, verifiquem os Widgets e as funções, tá tudo
  comentado.
*/

import 'package:flutter/material.dart';
import 'package:teste/widgets/LayoutLista.dart';
import 'package:teste/widgets/layoutApp.dart';
import 'package:teste/widgets/myWidgets.dart';
import 'abas/cadastro.dart';
import 'package:teste/abas/compras_widget.dart';
import 'abas/homePage.dart';
import 'package:teste/abas/reset-password.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: LayoutApp.secondaryTudodBom,
        ),
      home: Home(),
      routes: {
        'layoutLista': (BuildContext context) => LayoutLista(),
        'listPage': (mainContext) => ListPage(),
        'seusPedidos': (BuildContext context) => SeusPedidos(),
        'esqueciSenha': (BuildContext context) => ResetPasswordPage(),
        'paginaCompras': (BuildContext context) => Compras_Widget(),
        'paginaOfertas': (BuildContext context) => Cadastro(),
      },
    );
  }
}