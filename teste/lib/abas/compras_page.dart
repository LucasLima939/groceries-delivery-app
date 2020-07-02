import 'package:flutter/material.dart';
import 'package:teste/layout/layout_app.dart';
import 'package:teste/models/categories.dart';
import 'package:teste/widgets/troca_produto.dart';

class ComprasPage extends StatelessWidget {
  static String tag = 'compras-page';
  @override
  Widget build(BuildContext context) {
    return Layout(body: Compras());
  }
}

class Compras extends StatefulWidget {
  @override
  _ComprasState createState() => _ComprasState();
}

class _ComprasState extends State<Compras> {
  int indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Começo das 'CATEGORIAS';

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Categorias',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                    iconSize: 30.0,
                    color: Colors.red,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 130,
              //color: Colors.amber,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 10.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: categorias.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              print('clickou em categorias');
                            },
                            borderRadius: BorderRadius.circular(35),
                            child: CircleAvatar(
                              radius: 35.0,
                              backgroundImage:
                                  AssetImage(categorias[index].imageURL),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            categorias[index].nome,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),

            //Começo dos 'POPULARES';

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Populares',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                    iconSize: 30.0,
                    color: Colors.red,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 252,
              //color: Colors.red,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 10.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: produtos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            //método para carregar nova Página. Adicionar no main a 'route'.
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => trocarLayout(
                                            nome: produtos[index].nome,
                                            foto: produtos[index].imagePNG,
                                            descricao:
                                                produtos[index].descricao,
                                            preco: produtos[index].preco,
                                          )));
                            },
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 200,
                              width: 100,
                              decoration: BoxDecoration(
                                //color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(produtos[index]
                                      .imageURL), //carrega a foto de acordo com o 'index' da lista Produto.
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            //Nome embaixo do Container acessa o 'index' da lista produtos.
                            produtos[index].nome,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),

            //Começo das 'MARCAS';

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Marcas',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                    iconSize: 30.0,
                    color: Colors.red,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              //color: Colors.green,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 10.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: marcas.length, //Tamanho da lista;
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: () {
                                print('clickou em marcas');
                              },
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 6.0),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  //color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0),
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage(marcas[index]
                                        .imageURL), //carrega a foto de acordo com o 'index' da lista Produto.
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            //Nome embaixo do Container acessa o 'index' da lista produtos.
                            marcas[index].nome,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
