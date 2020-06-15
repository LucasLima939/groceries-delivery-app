import 'package:flutter/material.dart';
import 'package:teste/api/api_response.dart';
import 'package:teste/api/login_api.dart';
import 'package:teste/layout/layout_app.dart';
import 'package:teste/layout/layout_color.dart';
import 'package:teste/models/user.dart';
import 'package:teste/utils/alert.dart';
import 'package:teste/utils/nav.dart';
import 'package:teste/widgets/button_login.dart';
import 'ofertas_page.dart';

/** Esta classe padrão de login foi testada com a URL presente no "api_login"
 *  Ao ser alterada, deve continuar funcional de acordo com a URL
 *  Ao trocar a URL da API de referência, refazer testes de varificação de usuário
 *  Esta classe conversa com 4 outras classes para realizar o validação, construção do usuário
 *  resposta da requisição json, navegação de página e tratamento de erros:
 *  "login_api", "user.dart", "api_response", "nav.dart",  "alert.dart"
 *  em ordem. 
 */

class LoginPage extends StatelessWidget {
  static String tag = 'loginPage';
  @override
  Widget build(BuildContext context) {
    final content = Login();
    return Layout.getLayoutContent(context, content);
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  final _tEmail = TextEditingController();

  final _tSenha = TextEditingController();

  final _focusSenha = FocusNode();

  bool _showProgress = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            _textFormField(
              "Email",
              "Digite o email",
              controller: _tEmail,
              validator: _validateEmail,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              nextFocus: _focusSenha,
            ),
            SizedBox(
              height: 10,
            ),
            _textFormField("Senha", "Digite a senha",
                obscureText: true,
                controller: _tSenha,
                validator: _validateSenha,
                keyboardType: TextInputType.number,
                focusNode: _focusSenha),
            SizedBox(
              height: 10,
            ),
            LoginButton("login",
                onPressed: _onClickLogin, showProgress: _showProgress),
          ],
        ),
      ),
    );
  }

  TextFormField _textFormField(
    String label,
    String hint, {
    bool obscureText = false,
    TextEditingController controller,
    FormFieldValidator<String> validator,
    TextInputType keyboardType,
    TextInputAction textInputAction,
    FocusNode focusNode,
    FocusNode nextFocus,
  }) {
    return TextFormField(
      controller: controller, // responsável por ler os valores
      obscureText: obscureText,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        if (nextFocus != null) {
          FocusScope.of(context).requestFocus(nextFocus);
        }
      },
      style: TextStyle(
        fontSize: 25,
        color: LayoutColor.primaryColor,
      ),
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 25,
            color: LayoutColor.primaryColor,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 16,
          )),
    );
  }

  Future<void> _onClickLogin() async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    String login = _tEmail.text;
    String senha = _tSenha.text;

    print("Login: $login, Senha: $senha");

    setState(() {
      _showProgress = true;
    });

    ApiResponse response = await LoginApi.login(login, senha);

    if (response.ok) {
      Usuario user = response.result;

      print(">>> $user");

      push(context, OfertasPage(), replace: false);
    } else {
      alert(context, response.msg);
    }

    setState(() {
      _showProgress = false;
    });
  }

  String _validateEmail(String text) {
    if (text.isEmpty) {
      return "Digite o email";
    }
    return null;
  }

  String _validateSenha(String text) {
    if (text.isEmpty) {
      return "Digite a senha";
    }
    if (text.length < 3) {
      return "A senha precisa ter pelo menos 3 números";
    }
    return null;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
