import 'package:flutter/material.dart';
import 'package:teste/layout/layout_app.dart';
import 'package:teste/widgets/agua.dart';
import 'package:teste/widgets/amantes_da_cozinha.dart';
import 'package:teste/widgets/bebidas.dart';
import 'package:teste/widgets/frutas_vegetais.dart';
import 'package:teste/widgets/bolos_paes_sopas.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:teste/widgets/gas.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    return Layout(body: Home());
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  CarouselSlider instance;

  int currentindex = 0;

  final photos = [
    //imagens dos banners da home;
    'assets/banners/bannerBaratao1.jpg',
    'assets/banners/bannerBaratao2.jpg',
    'assets/banners/bannerBaratao3.jpg',
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
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 5, top: 5),
            child: Text(
              "Veja o que O Baratão tem para você!",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
                letterSpacing: 1,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 20),

          //Começo do 'Carousel';

          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              //no meu celular 0.9 é o ideal, porém no emulator 0.8;
              viewportFraction: 0.8, //espaço entre os sliders = 0.8 default;
              height: 90.0,
              initialPage: 0,
              autoPlay: true,
              reverse: false,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              //pauseAutoPlayOnTouch: Duration(milliseconds: 300),
              autoPlayAnimationDuration: Duration(seconds: 2),
              autoPlayInterval: Duration(seconds: 4),
            ),
            items: photos.map((i) {
              return Builder(builder: (BuildContext context) {
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

          SizedBox(height: 25), //Espaço entre o 'carousel' e o 'banner'.
          AguaContainer(),
          SizedBox(
            height: 40,
          ),
          GasContainer(),
          SizedBox(
            height: 40,
          ),
          FrutasEVegetais(),
          SizedBox(
            height: 40,
          ),
          AmantesDaCozinha(),
          SizedBox(
            height: 40,
          ),
          Bebidas(),
          SizedBox(
            height: 40,
          ),
          BolosPaesSopas(),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
