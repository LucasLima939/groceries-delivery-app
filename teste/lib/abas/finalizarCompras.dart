import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/widgets/ContadorProduto.dart';

import '../widgets/layoutApp.dart';

class PaginaCompra extends StatefulWidget {
  @override
  _PaginaCompraState createState() => _PaginaCompraState();
}

class _PaginaCompraState extends State<PaginaCompra> {
  @override
  int _counter = 0;

  get cusLogo => Container(//Logo personalizada. Trocar apenas o 'asset'.
                           width: 180,
                             height: 50,
                             decoration: BoxDecoration(
                                 image: DecorationImage(
                                   image: AssetImage('assets/images/mercadinhoTudoDeBom.png'),//Trocar logo do mercadinho.
                                   fit: BoxFit.cover,
                                   )
                                 ),
                           );

  void longDecrement(){
    setState(() {
      if(_counter == 0){
        _counter = 0;
      }if(_counter - 10 < 0){
        _counter = 0;
      }else{
        _counter -= 10;
      }
    });
  }

  void longIncrement(){
    setState(() {
      if(_counter == 99){
        _counter = 99;
      }if(_counter + 10 > 99){
        _counter = 99;
      }else{
        _counter += 10;
      }
    });
  }

  void increment() {
    setState(() {
      if(_counter == 99){
        _counter = 99;
      }
      else{
        _counter++;
      }
    });
  }

  void decrement(){
    setState(() {
      if(_counter == 0)
      _counter = 0;
      else{
        _counter--;
      }
    });
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LayoutApp.secondaryTudodBom, // COR
        leading: FlatButton(
          child: Icon(Icons.arrow_back_ios, color: LayoutApp.primaryTudodBom,), // COR
          onPressed: () {
            Navigator.pop(context);
          },
          ),
        title: Center(
          child: Center(child: cusLogo),
          ),
        actions: _getActions(context),
        ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0,left: 10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 150.0,),
                Container(
                  width: 280,//Quanto mais 'width' = Maior a imagem.
                  height: 150,
                  decoration: BoxDecoration(
                    //color: Colors.black38,
                    image: DecorationImage(
                      image: AssetImage('assets/images/bananaXD.png'),
                      fit: BoxFit.scaleDown
                    )
                  ),
                ),
                SizedBox(height: 25,),
                Text(
                  'Banana',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.white, 
                      letterSpacing: 1.0, 
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Text(
                    'R\$ 3,59',// $ = Caracter especial, portanto tem q ter o '\'.
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.0, 
                        fontSize: 20.0,
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: Center(
                    child: Text(
                      'A banana é rica em calcio, e fonte de vitaminas',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.white, 
                          letterSpacing: 1.0, 
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0,),
                Container(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Container(
                              width: 20.0,
                              height: 30.0,
                              child: FlatButton(//BUTÃO MENOS
                                padding: const EdgeInsets.only(right: 5.0),
                                onPressed: decrement,
                                onLongPress: longDecrement,
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                //color: Colors.green,
                                child: Icon(Icons.remove, color: Colors.white,),
                                ),
                              ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            //color: Colors.black,
                            width: 47.0,//tem que ser exatamente 47.
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                              child: Text('$_counter', style: TextStyle(fontSize: 27.0, color: Colors.white),),
                            )
                          ),
                          Container(
                            width: 15.0,//diminui pra caber o 'adicionar ao Carrinho'.
                            height: 30.0,
                            child: FlatButton(//BUTÃO MAIS
                              padding: const EdgeInsets.only(right: 10.0),
                              onPressed: increment,
                              onLongPress: longIncrement,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: Icon(Icons.add, color: Colors.white,),
                              ),
                            ),
                            SizedBox(width: 25,),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: OutlineButton(
                                highlightedBorderColor: Colors.white,
                                textColor: Colors.white,
                                borderSide: BorderSide(color: Colors.white),
                                onPressed: (){},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Text(
                                  'Adicionar ao Carrinho',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                                ),
                            ),
                            ),
                        ],
                        ),
                    ),
                  ),
                ),
                Container()//Em branco mesmo pra o 'background' ficar do tamanho da tela.
              ],
              ),
            ),
        ),
      ),
    );
  }


  static List<Widget> _getActions(BuildContext context) {

    List<Widget> items = List<Widget>( );

    items.add(
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('paginaCarrinho');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon( Icons.shopping_cart, color: LayoutApp.primaryBaratao, // COR
                       ),),),);
    return items;
  }
}