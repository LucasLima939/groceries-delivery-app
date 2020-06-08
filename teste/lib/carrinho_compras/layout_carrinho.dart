import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste/layout/layout_app.dart';
import 'gerador_lista_carrinho.dart';

class LayoutCarrinhoPage extends StatelessWidget {
  static String tag = 'layoutCarrinho';
  @override
  Widget build(BuildContext context) {
    final content = LayoutCarrinho();
    return Layout.getLayoutContent(context, content);
  }
}

class LayoutCarrinho extends StatelessWidget {
  static String tag = 'layoutCarrinho';

  @override
  Widget build(BuildContext context) {
    final content = GeradorListaCarrinho();

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
            Center(
              child: Text(
                'Seu Carrinho de Compras',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        actions: _getActions(context),
      ),
      body: content,
    );
  }

  static List<Widget> _getActions(BuildContext context) {
    List<Widget> itemsCarrinho = List<Widget>();

    //fora da pagina add items nao mostra acao alguma

    TextEditingController _c = TextEditingController();
    TextEditingController _c2 = TextEditingController();

    itemsCarrinho.add(
      GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext ctx) {
                final inputNomeProduto = TextFormField(
                  controller: _c,
                  decoration: InputDecoration(
                    hintText: 'Nome do Produto',
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                );
                final inputValorProduto = TextFormField(
                  controller: _c2,
                  decoration: InputDecoration(
                    hintText: 'Valor do Produto',
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                );

                return AlertDialog(
                  title: Text('Nova Lista'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[inputNomeProduto, inputValorProduto],
                    ),
                  ),
                  actions: <Widget>[
                    RaisedButton(
                      color: Colors.red,
                      child: Text(
                        'Cancelar',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    ),
                    RaisedButton(
                      color: Colors.red,
                      child: Text(
                        'Adicionar',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        // MÉTODO DE ADICIONAR PRODUTOS NA LISTA
                        GeradorListaCarrinho.itemsCarrinho.add(
                          ListTile(
                            title: Text(_c.text),
                            subtitle: Text(_c2.text),
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed('geradorListaCarrinho');
                            },
                          ),
                        );

                        Navigator.of(ctx).popAndPushNamed('layoutCarrinho');
                      },
                    ),
                  ],
                );
              });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );

    return itemsCarrinho;
  }
}
