import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/back/geradorListaCarrinho.dart';
import 'package:teste/widgets/myWidgets.dart';



class LayoutCarrinho extends StatelessWidget {

  static String tag = 'layout-lista';

  @override
  Widget build(BuildContext context) {

    final content = ListaPedidos();

    return _Layout.getContent(context, content);

  }
}


class _Layout {

  static int currItem = 1;

  static Scaffold getContent(BuildContext context, content) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: new Row(
          children: <Widget>[
            new SizedBox(
              width: 20.0,
              height: 30.0,
              ),
            Container(
              padding: EdgeInsets.fromLTRB( 20.0, 8.0, 8.0, 8.0
                                            ),
              child: Text(
                'Seu Carrinho de Compras', style: TextStyle( color: Colors.white
                                                       ),
                ),
              ),
          ],
          ),
        actions:  _getActions(context),
        ),
      body: content,
      );
  }

  static List<Widget> _getActions(BuildContext context) {

    List<Widget> items = List<Widget>( );

    //fora da pagina add items nao mostra acao alguma

    TextEditingController _c = TextEditingController( );
    TextEditingController _c2 = TextEditingController( );

    items.add(
      GestureDetector(

        onTap: () {
          showDialog(
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
                final input2 = TextFormField(
                  controller: _c2,
                  decoration: InputDecoration(
                    hintText: 'Valor do Produto',
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
                        input,
                        input2
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
                        ListaCarrinho.items.add(
                          ListTile(
                            title: Text(_c.text),
                            trailing: Text(_c2.text),
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
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon( Icons.add, color: Colors.white,
                       ),
          ),


        ),
      );

    return items;

  }
}