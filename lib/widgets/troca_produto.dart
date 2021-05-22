import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class BottomIcons extends StatefulWidget {
  @override
  _BottomIconsState createState() => _BottomIconsState();
}

Widget trocarLayout(
    {String nome, String foto, String descricao, double preco}) {
  return Scaffold(
    body: Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0, left: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 180.0,
              ), //Altura do topo até a foto.
              Container(
                width: 280, //Quanto mais 'width' = Maior a imagem.
                height: 150,
                decoration: BoxDecoration(
                    //color: Colors.black38,
                    image: DecorationImage(
                        image: AssetImage(foto), //A foto do produto.
                        fit: BoxFit.scaleDown)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                nome,
                textAlign: TextAlign.start,
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Text(
                  'R\$$preco', // $ = Caracter especial, portante tem q ter o '\'.
                  textAlign: TextAlign.start,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.0,
                    fontSize: 20.0,
                  )),
                ),
              ),
              Container(
                //color: Colors.black,
                height: 170,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      descricao, //DESCRIÇÃO
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
              ),
              //SizedBox(height: 103.0,),//Espaço entre texto e bottomIcons.
              Expanded(
                  child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: BottomIcons(),
              )),
              Container() //Em branco mesmo pra o 'background' ficar do tamanho da tela.
            ],
          ),
        ),
      ),
    ),
  );
}

class _BottomIconsState extends State<BottomIcons> {
  @override
  int _counter = 0;

  void longDecrement() {
    setState(() {
      if (_counter == 0) {
        _counter = 0;
      }
      if (_counter - 10 < 0) {
        _counter = 0;
      } else {
        _counter -= 10;
      }
    });
  }

  void longIncrement() {
    setState(() {
      if (_counter == 99) {
        _counter = 99;
      }
      if (_counter + 10 > 99) {
        _counter = 99;
      } else {
        _counter += 10;
      }
    });
  }

  void increment() {
    setState(() {
      if (_counter == 99) {
        _counter = 99;
      } else {
        _counter++;
      }
    });
  }

  void decrement() {
    setState(() {
      if (_counter == 0)
        _counter = 0;
      else {
        _counter--;
      }
    });
  }

  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        //color: Colors.green,
        height: 100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Container(
                      width: 20.0,
                      height: 30.0,
                      child: FlatButton(
                        //BUTÃO MENOS
                        padding: const EdgeInsets.only(right: 5.0),
                        onPressed: decrement,
                        onLongPress: longDecrement,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        //color: Colors.green,
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                      //color: Colors.black,
                      width: 47.0, //tem que ser exatamente 47.
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                        child: Text(
                          '$_counter',
                          style: TextStyle(fontSize: 27.0, color: Colors.white),
                        ),
                      )),
                  Container(
                    width: 15.0, //diminui pra caber o 'adicionar ao Carrinho'.
                    height: 30.0,
                    child: FlatButton(
                      //BUTÃO MAIS
                      padding: const EdgeInsets.only(right: 10.0),
                      onPressed: increment,
                      onLongPress: longIncrement,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: OutlineButton(
                        highlightedBorderColor: Colors.white,
                        textColor: Colors.white,
                        borderSide: BorderSide(color: Colors.white),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
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
      ),
    );
  }
}
