/** No layout há o bottomNavigatonBar e appBar
 * 
 */
import 'package:flutter/material.dart';
import 'package:teste/abas/compras_page.dart';
import 'package:teste/abas/home_page.dart';
import 'package:teste/abas/mais_page.dart';
import 'package:teste/abas/cadastro_page.dart';
import 'package:teste/layout/layout_color.dart';

class Layout {
  static String logo =
      'assets/images/LogoOBaratao.png'; //Trocar logo do mercadinho.

  static int currentIndex = 0; //Muda de acordo com a 'aba' selecionada;
  static final abas = [
    //Cada indice é carrega uma page: 0 - home; 1 - Ofertas; 2 - compras.
    HomePage.tag,
    CadastroPage.tag,
    ComprasPage.tag,
    MaisPage.tag
  ];

  static Scaffold getLayoutContent(BuildContext context, content,
      {leading, flexibleSpace, bottom}) {
    /// EDIÇÃO DO BOTTOM NAVIGATOR BAR
    BottomNavigationBar homeBottomNavigationBar = BottomNavigationBar(
      currentIndex: currentIndex, //Indice da 'aba' selecionada
      iconSize: 24.0,
      selectedFontSize: 16.0,
      unselectedFontSize: 14.0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: LayoutColor.primaryColor,
          ),
          title: Text(
            'Home',
            style: TextStyle(color: LayoutColor.primaryColor),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer, color: LayoutColor.primaryColor),
          title: Text(
            'Ofertas',
            style: TextStyle(color: LayoutColor.primaryColor),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart, color: LayoutColor.primaryColor),
          title: Text(
            'Compras',
            style: TextStyle(color: LayoutColor.primaryColor),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz, color: LayoutColor.primaryColor),
          title: Text(
            'Mais',
            style: TextStyle(color: LayoutColor.primaryColor),
          ),
        ),
      ],
      onTap: (int i) {
        currentIndex = i;
        Navigator.of(context).pushNamed(abas[i]);
      },
    );

    /// LOGO
    Widget _logo = Container(
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(logo), fit: BoxFit.contain),
      ),
    );

    ///
    _gestureDetector({onTap, Widget child}) {
      return GestureDetector(
        onTap: onTap,
        child: Padding(padding: const EdgeInsets.all(8.0), child: child),
      );
    }

    List<Widget> _getHomeAction(BuildContext context) {
      List<Widget> items = List<Widget>();
      items.add(_gestureDetector(child: Icon(Icons.search), onTap: () {}));
      return items;
    }

    /// LAYOUT
    return Scaffold(
      resizeToAvoidBottomInset: false, //Arruma o erro de overflow do teclado;
      appBar: AppBar(
        title: _logo,
        actions: _getHomeAction(context),
        leading: leading,
        flexibleSpace: flexibleSpace,
        bottom: bottom,
      ),
      body: content,
      bottomNavigationBar: homeBottomNavigationBar,
      primary: true,
    );
  }
}
