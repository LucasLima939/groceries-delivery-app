/** No layout há o bottomNavigatonBar e appBar
 * 
 */
import 'package:flutter/material.dart';

class CusAppBar extends AppBar {
  CusAppBar({Key key, Widget title, List<Widget> actions})
      : super(
          key: key,
          title: title,
          actions: actions,
        );
}
