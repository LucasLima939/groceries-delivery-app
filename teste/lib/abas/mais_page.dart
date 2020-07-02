import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/layout/layout_app.dart';
import 'package:teste/layout/layout_color.dart';
import 'package:teste/layout/layout_lista.dart';
import 'package:teste/widgets/my_widgets.dart';

class MaisPage extends StatelessWidget {
  static String tag = 'mais-page';
  @override
  Widget build(BuildContext context) {
    return Layout(body: Mais());
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

  /*Container _header(Usuario user) {
    return Container(
      padding: EdgeInsets.only(left: 14.0),
      child: Align(
        alignment: Alignment(-1, -1),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(user.urlFoto),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    user.nome,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    user.email,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                FlatButton(
                  child: Text(
                    "Alterar perfil",
                    style: TextStyle(
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
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SimpleTitle(
          titlePadding: EdgeInsets.all(8.0),
          titleText: 'Sua Conta',
        ),
        NormalButton(
          iconToSet: Icons.border_color,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Suas Listas de Compras',
          nextPage: ListaCompras(),
        ), //Set 'iconToSet:' & 'buttonText:'
        NormalButton(
          iconToSet: Icons.card_travel,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Seus Pedidos',
          nextPage: SeusPedidos(),
        ), //Set 'iconToSet:' & 'buttonText:'
        NormalButton(
          iconToSet: Icons.credit_card,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Formas de Pagamento',
          nextPage: FormasPagamento(),
        ), //Set 'iconToSet:' & 'buttonText:'
        NormalButton(
          iconToSet: Icons.pin_drop,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Endereços de Entrega',
          nextPage: EnderecosEntrega(),
        ), //Set 'iconToSet:' & 'buttonText:'
        NormalButton(
          iconToSet: Icons.vpn_key,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Alterar Senha',
          nextPage: AlterarSenha(),
        ), //Set 'iconToSet:' & 'buttonText:'

        SimpleTitle(
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
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: 24.0,
                width: 60.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: toggleValue
                        ? Colors.greenAccent[100]
                        : Colors.redAccent[100].withOpacity(0.5)),
                child: Stack(
                  children: <Widget>[
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                      top: 1.5,
                      left: toggleValue ? 36.0 : 0.0,
                      right: toggleValue ? 0.0 : 36.0,
                      child: InkWell(
                        onTap: toggleButton,
                        child: AnimatedSwitcher(
                            duration: Duration(milliseconds: 300),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return ScaleTransition(
                                  child: child, scale: animation);
                            },
                            child: toggleValue
                                ? Icon(Icons.check_circle,
                                    color: Colors.green,
                                    size: 21.0,
                                    key: UniqueKey())
                                : Icon(Icons.remove_circle_outline,
                                    color: Colors.red,
                                    size: 21.0,
                                    key: UniqueKey())),
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
        SimpleTitle(
          titlePadding: EdgeInsets.fromLTRB(8.0, 28.0, 8.0, 8.0),
          titleText: 'Serviços',
        ), // "Serviços"
        NormalButton(
          iconToSet: Icons.help,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Ajuda',
        ), // Botão "Ajuda"
        NormalButton(
          iconToSet: Icons.phone,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Central de Relacionamento',
        ), // Botão "Central de Relacionamento"
        NormalButton(
          iconToSet: Icons.store,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Lojas',
        ), // Botão "Lojas"
        NormalButton(
          iconToSet: Icons.star,
          iconColor: LayoutColor.primaryColor,
          buttonText: 'Avalie o Aplicativo',
        ), // Botão "Avalie o Aplicativo"
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
}
