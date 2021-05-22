import 'package:flutter/material.dart';
import 'package:teste/layout/layout_color.dart';

class CusBottomNavigatorBar extends BottomNavigationBar {
  CusBottomNavigatorBar(
      {Key key,
      int currentIndex,
      Function onTap,
      double iconSize,
      double selectedFontSize,
      double unselectedFontSize,
      BottomNavigationBarType type,
      List<BottomNavigationBarItem> items})
      : super(
          key: key,
          currentIndex: currentIndex,
          onTap: onTap,
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
        );
}
