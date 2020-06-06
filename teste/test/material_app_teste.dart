import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'controller.dart';

void main() => runApp(MobxTeste());

class MobxTeste extends StatelessWidget {

  var controller = Controller();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MobX Teste"),
        ),
        body: Padding(
          padding: EdgeInsets.all(30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'nome'),
                  onChanged: controller.mudarNome,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(labelText: 'Sobrenome'),
                  onChanged: controller.mudarSobrenome,
                ),
                SizedBox(height: 20),
                Observer(
                    builder: (_){
                      return Text('${controller.nomeCompleto}');
                    },
                    ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        ),
    );
  }
}