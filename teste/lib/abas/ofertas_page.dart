import 'package:flutter/material.dart';
import 'package:teste/layout/layout_app.dart';

class OfertasPage extends StatelessWidget {
  static String tag = 'ofertas-page';
  @override
  Widget build(BuildContext context) {
    final content = Ofertas();

    return Layout.getLayoutContent(context, content);
  }
}

class Ofertas extends StatefulWidget {
  @override
  _OfertasState createState() => _OfertasState();
}

class _OfertasState extends State<Ofertas> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
