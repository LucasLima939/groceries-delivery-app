import 'package:flutter/material.dart';

/** Esta é uma classe genérica para transmissão de menssagens para o usuário
 *  Geralmente transmissão de mensagens de erro
 *  Parâmetro String msg recebe a mensagem de erro emitida pelo catch
 */

alert(BuildContext context, String msg) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text("O Baratão informa:"),
            content: Text(msg),
            actions: <Widget>[
              FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      });
}
