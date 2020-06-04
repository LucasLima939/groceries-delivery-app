/*
  Terminar as colunas e descobrir como centralizar na tela - DONE
  Como fazer os containers clickáveis - DONE
  Descobrir como o teclado não sobrepor os containers - DONE
  Customizar melhor a home - HALF
  Terminar o Compras;
  
*/

//import 'package:gradient_widgets/gradient_widgets.dart';
//import 'myWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teste/widgets/home_widget.dart';
import 'package:teste/widgets/layoutApp.dart';
import 'cadastro.dart';
import 'compras_widget.dart';
import 'abaMais.dart';

class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  Icon cusIcon = Icon(Icons.search, color: LayoutApp.primaryTudodBom);
  Widget cusLogo = 
  Container(//Logo personalizada. Trocar apenas o 'asset'.
  width: 150,
  height: 50,
  alignment: Alignment.centerLeft,
  decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/images/mercadinhoTudoDeBom.png'),//Trocar logo do mercadinho.
      fit: BoxFit.cover,
    )
  ),
  );

  int _currentIndex = 0;//Muda de acordo com a 'aba' selecionada;
  final abas = [//Cada indice é carrega uma page: 0 - home; 1 - Ofertas; 2 - compras.
    MyButton(),
    CadastroPage(),
    ComprasPage(),
    Mais(),
  ];//Widgets que irão carregar de acordo com a 'aba' selecionada;
    //Aqui só mudei de cor pra ver se pelo menos tá funcionando;

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     resizeToAvoidBottomInset: false,//Arruma o erro de overflow do teclado;
     appBar: AppBar(
       title: cusLogo,
        actions: <Widget>[
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
                          image: AssetImage('assets/images/mercadinhoTudoDeBom.png'),//mudar aqui.
                          fit: BoxFit.cover,
                          )
                        ),
                    );
                }
              });
            },
            icon: cusIcon,
          ),
        ],
      ),
      body: SafeArea(child: abas[_currentIndex],),   
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: _currentIndex, //Indice da 'aba' selecionada
       iconSize: 24.0,
       selectedFontSize: 16.0,
       unselectedFontSize: 14.0,
       type: BottomNavigationBarType.fixed,
       items: [
         BottomNavigationBarItem(
           icon: Icon(Icons.home, color: LayoutApp.primaryTudodBom,), // COR
           title: Text('Home', style: TextStyle(color: LayoutApp.primaryTudodBom),), // COR
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.local_offer, color: LayoutApp.primaryTudodBom), // COR
           title: Text('Ofertas', style: TextStyle(color: LayoutApp.primaryTudodBom),), // COR
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.shopping_cart, color: LayoutApp.primaryTudodBom), // COR
           title: Text('Compras', style: TextStyle(color: LayoutApp.primaryTudodBom),), // COR
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.more_horiz, color: LayoutApp.primaryTudodBom), // COR
           title: Text('Mais', style: TextStyle(color: LayoutApp.primaryTudodBom),), // COR
         ),
       ],
       onTap: (index) {
         setState(() {
           _currentIndex = index;
         });
       },
     ),
   );
 }
}