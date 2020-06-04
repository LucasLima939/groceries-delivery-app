/*
  Criei um arquivo separado pra cada coisa pra ficar tudo mais organizado.
  home_widget é toda a tela inicial do 'home', e contém:
    AppBar(barra superior) e BottomNavigationBar(barra inferior);
    Método onTabTapped
  Pra detalhes específicos, verifiquem os Widgets e as funções, tá tudo
  comentado.
*/


import 'package:flutter/material.dart';

import 'package:teste/widgets/layoutLista.dart';
import 'package:teste/widgets/layoutApp.dart';
import 'package:teste/widgets/myWidgets.dart';
import 'abas/cadastro.dart';
import 'package:teste/abas/compras_widget.dart';
import 'abas/homePage.dart';
import 'package:teste/abas/reset-password.dart';
import 'bloc.dart';
import 'carrinhoFinalizarCompras/geradorListaCarrinho.dart';
import 'carrinhoFinalizarCompras/layoutCarrinho.dart';

import 'widgets/layoutApp.dart';

void main() => runApp(AppMarket());

class AppMarket extends StatelessWidget {

  Bloc bloc = Bloc();

  final routes = <String, WidgetBuilder> {
    LayoutLista.tag: (BuildContext context) => LayoutLista(),
    SeusPedidos.tag: (BuildContext context) => SeusPedidos(),
    ListPage.tag: (BuildContext context) => ListPage(),
    CadastroPage.tag: (BuildContext context) => CadastroPage(),
    ComprasPage.tag: (BuildContext context) => ComprasPage(),
    ResetPasswordPage.tag: (BuildContext context) => ResetPasswordPage(),
    LayoutCarrinho.tag: (BuildContext context) => LayoutCarrinho(),
    GeradorListaCarrinho.tag: (BuildContext context) => GeradorListaCarrinho(),
  };

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: LayoutApp.secondaryBaratao,
        ),
      home: Home(),
      routes: routes,
    );
  }
}