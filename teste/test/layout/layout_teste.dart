import 'package:flutter/material.dart';
import 'package:teste/abas/compras_page.dart';
import 'package:teste/abas/home_page.dart';
import 'package:teste/abas/login_page.dart';
import 'package:teste/abas/mais_page.dart';

import 'app_bar_teste.dart';
import 'bottom_bar.dart';

class LayoutTeste extends StatefulWidget {
  final Widget body;

  LayoutTeste({Key key, @required this.body}) : super(key: key);

  _LayoutTesteState createState() => _LayoutTesteState();
}

class _LayoutTesteState extends State<LayoutTeste> {
  static String logo =
      'assets/logo/logo_baratao.png'; //Trocar logo do mercadinho.
  int currentIndex = 0;
  final abas = [
    //Cada indice é carrega uma page: 0 - home; 1 - ofertas; 2 - compras; 3 - mais.
    HomePage.tag,
    LoginPage.tag,
    ComprasPage.tag,
    MaisPage.tag
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTeste(
        title: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(logo), fit: BoxFit.contain),
          ),
        ),
      ),
      body: widget.body,
      bottomNavigationBar: BottomBar(
        currentIndex: currentIndex,
        onTap: (int i) {
          currentIndex = i;
          Navigator.of(context).pushNamed(abas[i]);
        },
      ),
    );
  }
}
