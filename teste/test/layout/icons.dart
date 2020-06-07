


static import 'package:flutter/material.dart';
import 'package:teste/widgets/myWidgets.dart';

_setState();

List<Widget> _getActionSearch(BuildContext context) {

    List<Widget> items = List<Widget>( );

    //fora da pagina add items nao mostra acao alguma

    TextEditingController _c = TextEditingController( );

    items.add(
        IconButton(
            onPressed: (){
              setState(() {
                //caso o icone no AppBar seja o de 'search', ao clickar muda pra o 'cancel' e muda o texto.
                if(this.cusIcon.icon == Icons.search){
                  this.cusIcon = Icon(Icons.cancel);
                  this.cusLogo = TextField(
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Digite o produto desejado...',
                      hintStyle: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  );
                }else{
                  this.cusIcon = Icon(Icons.search);
                  this.cusLogo = Container(
                    width: 150,
                    height: 50,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(logo),
                          fit: BoxFit.cover,
                          )
                        ),
                    );
                }
                
              });
            },
          ),
      );
 }

 _showListaComprasDialog(BuildContext context) {

   TextEditingController _c = TextEditingController();

   return showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext ctx) {
                final input = TextFormField(
                  controller: _c,
                  decoration: InputDecoration(
                    hintText: 'Nome do Produto',
                    contentPadding: EdgeInsets.fromLTRB( 20, 10, 20, 10
                                                         ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular( 5
                                                             )
                        ),
                    ),
                  );

                return AlertDialog(
                  title: Text( 'Nova Lista'
                               ),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        input
                      ],
                      ),
                    ),
                  actions: <Widget>[
                    RaisedButton(
                      color: Colors.red,
                      child: Text(
                        'Cancelar', style: TextStyle( color: Colors.white
                                                      ),
                        ),
                      onPressed: () {
                        Navigator.of( ctx
                                      ).pop( );
                      },
                      ),
                    RaisedButton(
                      color: Colors.red,
                      child: Text(
                        'Adicionar', style: TextStyle( color: Colors.white
                                                       ),
                        ),
                      onPressed: () {
                        ListaPedidos.items.add(
                          ListTile(
                            leading: Icon(Icons.pages),
                            title: Text(_c.text),
                            trailing: Icon(Icons.settings_applications),
                            onTap: () {
                              Navigator.of(context).pushNamed('listPage');
                            },
                            ),
                          );

                        Navigator.of(ctx).popAndPushNamed('layoutLista');
                      },
                      ),
                  ],
                  );
              }
              );
 }

 List<Widget> _getActions(BuildContext context) {

    List<Widget> items = List<Widget>();

    items.add(_gestureDetector(child: Icon(Icons.add), onTap: _showListaComprasDialog));
    items.add(_gestureDetector(child: Icon(Icons.search), onTap: ));
      

    return items;

  }

  _gestureDetector ({onTap, Widget child}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(padding: const EdgeInsets.all(8.0),
      child: child),
    );
  }
