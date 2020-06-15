import 'package:flutter/material.dart';

/** Esta é uma classe genérica para navegação entre páginas de forma simplificada
 *  Recebe um contexto, página para ir e sobescreve ou não.
 */

Future push(BuildContext context, Widget page, {bool replace = false}) {
  if (replace) {
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}
