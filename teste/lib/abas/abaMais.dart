import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/widgets/LayoutLista.dart';
import 'package:teste/widgets/layoutApp.dart';
import 'package:teste/widgets/myWidgets.dart';

class Mais extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return AbaMais();
  }
}
class AbaMais extends State<Mais> {

  bool toggleValue = false;
  bool toggleTwoValue = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 14.0),
            child: Align(alignment: Alignment(-1,-1),
                           child: Row(children: <Widget>[
                             CircleAvatar(
                               radius: 35,
                               backgroundColor: Colors.grey,
                               child: Icon(Icons.person, color: Colors.white,),
                               ),
                             new Column(
                               children: <Widget>[
                                 Padding(
                                   padding: const EdgeInsets.only(left:25.0),
                                   child: new Text("nome do usuário", style: new TextStyle(
                                     fontSize: 20.0, fontWeight: FontWeight.bold, color: LayoutApp.textBlack,
                                     ),),
                                 ),
                                 new FlatButton(
                                   child: Text("Alterar perfil", style: new TextStyle(
                                     fontSize: 15.0, color: LayoutApp.primaryTudodBom, decoration: TextDecoration.underline, fontWeight: FontWeight.bold, // COR
                                     ),),
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
            iconColor: LayoutApp.primaryTudodBom, // COR
            buttonText: 'Suas Listas de Compras',
            nextPage: LayoutLista(),
            ), //Set 'iconToSet:' & 'buttonText:'
          new NormalButton(
            iconToSet: Icons.card_travel,
            iconColor: LayoutApp.primaryTudodBom, // COR
            buttonText: 'Seus Pedidos',
            nextPage: SeusPedidos(),
            ), //Set 'iconToSet:' & 'buttonText:'
          new NormalButton(
            iconToSet: Icons.credit_card,
            iconColor: LayoutApp.primaryTudodBom, // COR
            buttonText: 'Formas de Pagamento',
            nextPage: FormasPagamento(),
            ), //Set 'iconToSet:' & 'buttonText:'
          new NormalButton(
            iconToSet: Icons.pin_drop,
            iconColor: LayoutApp.primaryTudodBom, // COR
            buttonText: 'Endereços de Entrega',
            nextPage: EnderecosEntrega(),
            ), //Set 'iconToSet:' & 'buttonText:'
          new NormalButton(
            iconToSet: Icons.vpn_key,
            iconColor: LayoutApp.primaryTudodBom, // COR
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
                      borderRadius:BorderRadius.circular(12.0),
                      color: toggleValue ? Colors.greenAccent[100]: Colors.redAccent[100].withOpacity(0.5)
                      ),
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
                              transitionBuilder: (Widget child, Animation<double> animation) {
                                return ScaleTransition(
                                    child: child, scale: animation);
                              },
                              child: toggleValue ? new Icon(Icons.check_circle, color: Colors.green, size: 21.0,
                                                                key: new UniqueKey()
                                                            ) : new Icon(Icons.remove_circle_outline, color: Colors.red, size: 21.0,
                                                                             key: new UniqueKey()
                                                                         )
                              ),
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
                      borderRadius:BorderRadius.circular(12.0),
                      color: toggleTwoValue ? Colors.greenAccent[100]: Colors.redAccent[100].withOpacity(0.5)
                      ),
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
                              transitionBuilder: (Widget childTwo, Animation<double> animationTwo) {
                                return ScaleTransition(
                                    child: childTwo, scale: animationTwo);
                              },
                              child: toggleTwoValue ? new Icon(Icons.check_circle, color: Colors.green, size: 21.0,
                                                                   key: new UniqueKey()
                                                               ) : new Icon(Icons.remove_circle_outline, color: Colors.red, size: 21.0,
                                                                                key: new UniqueKey()
                                                                            )
                              ),
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
            iconColor: LayoutApp.primaryTudodBom, // COR
            buttonText: 'Ajuda',
            ), // Botão "Ajuda"
          new NormalButton(
            iconToSet: Icons.phone,
            iconColor: LayoutApp.primaryTudodBom, // COR
            buttonText: 'Central de Relacionamento',
            ), // Botão "Central de Relacionamento"
          new NormalButton(
            iconToSet: Icons.store,
            iconColor: LayoutApp.primaryTudodBom, // COR
            buttonText: 'Lojas',
            ), // Botão "Lojas"
          new NormalButton(
            iconToSet: Icons.star,
            iconColor: LayoutApp.primaryTudodBom, // COR
            buttonText: 'Avalie o Aplicativo',
            ), // Botão "Avalie o Aplicativo"
          new NormalButton(
            iconToSet: Icons.exit_to_app,
            iconColor: LayoutApp.primaryTudodBom, // COR
            buttonText: 'Sair da Conta',
            ), // Botão "Sair da Conta"
          //versão do APP
          //appbar
        ],
                      ),
        ),
      );
  }

  toggleButton(){setState((){toggleValue = !toggleValue;});}
  toggleTwoButton(){setState((){toggleTwoValue = !toggleTwoValue;});}

}