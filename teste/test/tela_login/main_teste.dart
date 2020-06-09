import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(LoginTeste());

class LoginTeste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
