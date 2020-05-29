import 'package:flutter/material.dart';
import 'amantesDaCozinha.dart';
import 'bebidas.dart';
import 'frutasEVegetais.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:carousel_pro/carousel_pro.dart';

import 'layoutApp.dart';

//import 'package:gradient_widgets/gradient_widgets.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {

  //String nome_do_mercadinho = 'Korea Market';
  CarouselSlider instance;
  int _currentindex = 0;

  final photos = [//imagens dos banners da home;
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, right: 10, top: 15),
            child: Text(
            'Bem-Vindo',
            style: TextStyle(
              color: LayoutApp.textBlack,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 5, top: 5),
            child: Text(
            "Veja o que o Tudo D" "'" "Bom tem para você!",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              letterSpacing: 1,
              color: LayoutApp.textBlack,
              ),
            ),
          ),
          SizedBox(height: 20),

        //Começo do 'Carousel';

        CarouselSlider(
          options: CarouselOptions(
          aspectRatio: 16/9,
          //no meu celular 0.9 é o ideal, porém no emulator 0.8;
          viewportFraction: 0.8,//espaço entre os sliders = 0.8 default;
          height: 90.0,
          initialPage: 0,
          autoPlay: true,
          reverse: false,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
          //pauseAutoPlayOnTouch: Duration(milliseconds: 300),
          autoPlayAnimationDuration: Duration(seconds: 2),
          autoPlayInterval: Duration(seconds: 4),),
          items: photos.map((i){
            return Builder(builder: (BuildContext context){
              return Container(
                width: 300,
                margin: EdgeInsets.only(bottom: 6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(i),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            });
          }).toList(),
        ),

          //COMEÇO DOS BANNERS DA HOME.

          SizedBox(height: 25),//Espaço entre o 'carousel' e o 'banner'.
          FrutasEVegetais(),
          SizedBox(height: 40,),
          AmantesDaCozinha(),
          SizedBox(height: 40,),
          Bebidas(),
        ],
        ),
        );
  }
}


