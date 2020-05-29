import 'package:flutter/material.dart';
import 'package:teste/produto/Categorias.dart';
import 'package:teste/widgets/layoutApp.dart';
//import 'Produto.dart';


class Compras_Widget extends StatefulWidget {
  @override
  _Compras_WidgetState createState() => _Compras_WidgetState();
}

class _Compras_WidgetState extends State<Compras_Widget> {
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
                      color: LayoutApp.textBlack,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      ),
                    ),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz, color: LayoutApp.primaryTudodBom, // COR
                      ),
                    iconSize: 30.0,
                    color: Colors.red,
                    onPressed: (){},
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
                            onTap: (){print('clickou em categorias');},
                            borderRadius: BorderRadius.circular(35),
                            child: CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage(categorias[index].imageURL),
                              ),
                            ),
                          SizedBox(height: 10.0),
                          Text(
                            categorias[index].nome,
                            style: TextStyle(
                              color: LayoutApp.textBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              letterSpacing: 1.0,
                              ),
                            ),
                        ],
                        ),
                      );
                  }
                  ),
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
                      color: LayoutApp.textBlack,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      ),
                    ),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz, color: LayoutApp.primaryTudodBom, // COR
                      ),
                    iconSize: 30.0,
                    color: Colors.red,
                    onPressed: (){},
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
                            onTap: (){Navigator.of(context).pushNamed('compra2');},
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 200,
                                width: 100,
                                decoration: BoxDecoration(
                                  //color: Colors.green,
                                  borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(produtos[index].imageURL),//carrega a foto de acordo com o 'index' da lista Produto.
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
                                color: LayoutApp.textBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                letterSpacing: 1.0,
                                ),
                            ),
                        ],
                        ),
                      );
                  }
                  ),
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
                      color: LayoutApp.textBlack,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      ),
                    ),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz, color: LayoutApp.primaryTudodBom, // COR
                      ),
                    iconSize: 30.0,
                    color: Colors.red,
                    onPressed: (){},
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
                  itemCount: marcas.length,//Tamanho da lista;
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: (){print('clickou em marcas');},
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
                                      image: AssetImage(marcas[index].imageURL),//carrega a foto de acordo com o 'index' da lista Produto.
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
                                color: LayoutApp.textBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                letterSpacing: 1.0,
                                ),
                            ),
                        ],
                        ),
                      );
                  }
                  ),
              ),
          ],
          ),
        ),
    );
  }
}