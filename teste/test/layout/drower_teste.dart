import 'package:flutter/material.dart';
import 'package:teste/models/usuario.dart';

class DrowerTeste extends StatelessWidget {
  UserAccountsDrawerHeader _header(Usuario user) {
    return UserAccountsDrawerHeader(
      accountName: Text(user.nome),
      accountEmail: Text(user.email),
      currentAccountPicture: CircleAvatar(
        backgroundImage: NetworkImage(user.urlFoto),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future<Usuario> future = Usuario.get();

    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            FutureBuilder<Usuario>(
                future: future,
                builder: (context, snapshot) {
                  Usuario user = snapshot.data;
                  return user != null
                      ? _header(user)
                      : Container(
                          color: Colors.red,
                        );
                }),
            FlatButton(
              child: Text('Sair da Conta'),
              onPressed: _onClickLogout(context),
            ),
          ],
        ),
      ),
    );
  }

  _onClickLogout(BuildContext context) {}
}
