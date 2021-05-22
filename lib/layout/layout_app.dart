import 'package:flutter/material.dart';
import 'package:teste/abas/compras_page.dart';
import 'package:teste/abas/home_page.dart';
import 'package:teste/abas/login_page.dart';
import 'package:teste/abas/mais_page.dart';

import 'app_bar.dart';
import 'bottom_navigator_bar.dart';

class Layout extends StatefulWidget {
  final Widget body;

  Layout({Key key, @required this.body}) : super(key: key);

  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
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
      appBar: CusAppBar(
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
      bottomNavigationBar: CusBottomNavigatorBar(
        currentIndex: currentIndex,
        onTap: (int i) {
          currentIndex = i;
          Navigator.of(context).pushNamed(abas[i]);
        },
      ),
    );
  }
}
