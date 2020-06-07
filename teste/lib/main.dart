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
import 'package:teste/widgets/myWidgets.dart';
import 'package:teste/abas/compras_widget.dart';
import 'package:teste/abas/reset-password.dart';
import 'abas/abaMais.dart';
import 'abas/home_page.dart';
import 'back/cadastro.dart';
import 'bloc.dart';
import 'carrinhoFinalizarCompras/geradorListaCarrinho.dart';
import 'carrinhoFinalizarCompras/layoutCarrinho.dart';

import 'layout/layout_color.dart';

void main() => runApp(AppMarket());

class AppMarket extends StatelessWidget {
  Bloc bloc = Bloc();

  final routes = <String, WidgetBuilder>{
    ListaCompras.tag: (BuildContext context) => ListaCompras(),
    SeusPedidos.tag: (BuildContext context) => SeusPedidos(),
    ListPage.tag: (BuildContext context) => ListPage(),
    CadastroPage.tag: (BuildContext context) => CadastroPage(),
    ComprasPage.tag: (BuildContext context) => ComprasPage(),
    ResetPasswordPage.tag: (BuildContext context) => ResetPasswordPage(),
    LayoutCarrinho.tag: (BuildContext context) => LayoutCarrinho(),
    GeradorListaCarrinho.tag: (BuildContext context) => GeradorListaCarrinho(),
    HomePage.tag: (BuildContext context) => HomePage(),
    Mais.tag: (BuildContext context) => Mais()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: LayoutColor.secondaryColor,
      ),
      home: HomePage(),
      routes: routes,
    );
  }
}
