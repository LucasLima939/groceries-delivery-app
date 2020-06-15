import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/layout/layout_app.dart';
import 'package:teste/layout/layout_color.dart';
import 'package:teste/layout/layout_lista.dart';
import 'package:teste/utils/nav.dart';
import 'package:teste/widgets/my_widgets.dart';

import 'login_page.dart';

class MaisPage extends StatelessWidget {
  static String tag = 'mais-page';
  @override
  Widget build(BuildContext context) {
    final content = Mais();

    return Layout.getLayoutContent(context, content);
  }
}

class Mais extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Mais();
  }
}

class _Mais extends State<Mais> {
  bool toggleValue = false;
  bool toggleTwoValue = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 14.0),
          child: Align(
            alignment: Alignment(-1, -1),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                new Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: new Text(
                        "nome do usuário",
                        style: new TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    new FlatButton(
                      child: Text(
                        "Alterar perfil",
                        style: new TextStyle(
                          fontSize: 15.0,
                          color: LayoutColor.primaryColor,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        new SimpleTitle(
          titlePadding: EdgeInsets.all(8.0),
          titleText: 'Sua Conta',
        ),
        new NormalButton(
          iconToSet: Icons.border_color,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Suas Listas de Compras',
          nextPage: ListaCompras(),
        ), //Set 'iconToSet:' & 'buttonText:'
        new NormalButton(
          iconToSet: Icons.card_travel,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Seus Pedidos',
          nextPage: SeusPedidos(),
        ), //Set 'iconToSet:' & 'buttonText:'
        new NormalButton(
          iconToSet: Icons.credit_card,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Formas de Pagamento',
          nextPage: FormasPagamento(),
        ), //Set 'iconToSet:' & 'buttonText:'
        new NormalButton(
          iconToSet: Icons.pin_drop,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Endereços de Entrega',
          nextPage: EnderecosEntrega(),
        ), //Set 'iconToSet:' & 'buttonText:'
        new NormalButton(
          iconToSet: Icons.vpn_key,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Alterar Senha',
          nextPage: AlterarSenha(),
        ), //Set 'iconToSet:' & 'buttonText:'

        new SimpleTitle(
          titlePadding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 4.0),
          titleText: 'Configurações',
        ),

        Container(
          color: Colors.white10,
          height: 20.0,
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Colors.grey.shade900),
            ),
          ),
          width: 20.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Notificações",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ), //"Notificação"
              new AnimatedContainer(
                duration: new Duration(milliseconds: 300),
                height: 24.0,
                width: 60.0,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: toggleValue
                        ? Colors.greenAccent[100]
                        : Colors.redAccent[100].withOpacity(0.5)),
                child: new Stack(
                  children: <Widget>[
                    new AnimatedPositioned(
                      duration: new Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                      top: 1.5,
                      left: toggleValue ? 36.0 : 0.0,
                      right: toggleValue ? 0.0 : 36.0,
                      child: new InkWell(
                        onTap: toggleButton,
                        child: new AnimatedSwitcher(
                            duration: new Duration(milliseconds: 300),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return ScaleTransition(
                                  child: child, scale: animation);
                            },
                            child: toggleValue
                                ? new Icon(Icons.check_circle,
                                    color: Colors.green,
                                    size: 21.0,
                                    key: new UniqueKey())
                                : new Icon(Icons.remove_circle_outline,
                                    color: Colors.red,
                                    size: 21.0,
                                    key: new UniqueKey())),
                      ),
                    ),
                  ],
                ),
              ), // Botão Switch
            ],
          ),
        ), // Botão "Notificação"
        SizedBox(
          height: 20.0,
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Colors.grey.shade900),
            ),
          ),
          width: 20.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Localização",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ), // "Localização"
              new AnimatedContainer(
                duration: new Duration(milliseconds: 300),
                height: 24.0,
                width: 60.0,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: toggleTwoValue
                        ? Colors.greenAccent[100]
                        : Colors.redAccent[100].withOpacity(0.5)),
                child: new Stack(
                  children: <Widget>[
                    new AnimatedPositioned(
                      duration: new Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                      top: 1.5,
                      left: toggleTwoValue ? 36.0 : 0.0,
                      right: toggleTwoValue ? 0.0 : 36.0,
                      child: new InkWell(
                        onTap: toggleTwoButton,
                        child: new AnimatedSwitcher(
                            duration: new Duration(milliseconds: 300),
                            transitionBuilder: (Widget childTwo,
                                Animation<double> animationTwo) {
                              return ScaleTransition(
                                  child: childTwo, scale: animationTwo);
                            },
                            child: toggleTwoValue
                                ? new Icon(Icons.check_circle,
                                    color: Colors.green,
                                    size: 21.0,
                                    key: new UniqueKey())
                                : new Icon(Icons.remove_circle_outline,
                                    color: Colors.red,
                                    size: 21.0,
                                    key: new UniqueKey())),
                      ),
                    ),
                  ],
                ),
              ), //Botão switch
            ],
          ),
        ), // Botão "Localização"
        new SimpleTitle(
          titlePadding: EdgeInsets.fromLTRB(8.0, 28.0, 8.0, 8.0),
          titleText: 'Serviços',
        ), // "Serviços"
        new NormalButton(
          iconToSet: Icons.help,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Ajuda',
        ), // Botão "Ajuda"
        new NormalButton(
          iconToSet: Icons.phone,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Central de Relacionamento',
        ), // Botão "Central de Relacionamento"
        new NormalButton(
          iconToSet: Icons.store,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Lojas',
        ), // Botão "Lojas"
        new NormalButton(
          iconToSet: Icons.star,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Avalie o Aplicativo',
        ), // Botão "Avalie o Aplicativo"
        new NormalButton(
          iconToSet: Icons.exit_to_app,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Sair da Conta',
          nextPage: _onClickLogout(context),
        ), // Botão "Sair da Conta"
        //versão do APP
        //appbar
      ],
    );
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }

  toggleTwoButton() {
    setState(() {
      toggleTwoValue = !toggleTwoValue;
    });
  }

  _onClickLogout(BuildContext context) {
    Navigator.pop(context);
    push(context, LoginPage(), replace: true);
  }
}
