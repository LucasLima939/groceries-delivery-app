import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste/layout/layout_app.dart';

class ResetPasswordPage extends StatelessWidget {
  static String tag = 'resetPasswordPage';
  @override
  Widget build(BuildContext context) {
    final content = ResetPassword();
    return Layout.getLayoutContent(context, content);
  }
}

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
                width: 200,
                height: 200,
                child: Container(
                    decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/LogoOBaratao.jpg'), // importar a imagem de resetar a senha aqui
                  ),
                ))),
            SizedBox(height: 20),
            Text(
              'Esqueceu sua senha ?',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Favor informar o e-mail associado a sua conta que enviaremos um link para o mesmo com as instruções para restauração de sua senha',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 60.0),
            Container(
              height: 60.0,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0XFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    'Enviar',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
