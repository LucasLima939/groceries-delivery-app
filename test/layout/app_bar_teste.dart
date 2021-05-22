/** No layout há o bottomNavigatonBar e appBar
 * 
 */
import 'package:flutter/material.dart';

import 'drower_teste.dart';

class AppBarTeste extends AppBar {
  AppBarTeste({Key key, Widget title, List<Widget> actions})
      : super(
          key: key,
          title: title,
          actions: actions,
        );
}
