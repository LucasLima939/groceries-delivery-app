import 'package:flutter/material.dart';

import 'package:teste/widgets/my_widgets.dart';
import 'package:teste/abas/compras_page.dart';
import 'abas/home_page.dart';
import 'abas/mais_page.dart';
import 'abas/reset_password_page.dart';
import 'abas/cadastro_page.dart';
import 'bloc.dart';
import 'carrinho_compras/gerador_lista_carrinho.dart';
import 'carrinho_compras/layout_carrinho.dart';

import 'layout/layout_color.dart';
import 'layout/layout_lista.dart';

void main() => runApp(AppMarket());

class AppMarket extends StatelessWidget {
  Bloc bloc = Bloc();

  final routes = <String, WidgetBuilder>{
    ListaCompras.tag: (BuildContext context) => ListaCompras(),
    SeusPedidosPage.tag: (BuildContext context) => SeusPedidosPage(),
    Lista.tag: (BuildContext context) => Lista(),
    CadastroPage.tag: (BuildContext context) => CadastroPage(),
    ComprasPage.tag: (BuildContext context) => ComprasPage(),
    ResetPasswordPage.tag: (BuildContext context) => ResetPasswordPage(),
    LayoutCarrinho.tag: (BuildContext context) => LayoutCarrinho(),
    GeradorListaCarrinho.tag: (BuildContext context) => GeradorListaCarrinho(),
    HomePage.tag: (BuildContext context) => HomePage(),
    MaisPage.tag: (BuildContext context) => MaisPage()
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
