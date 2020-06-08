//enviar um texto e filtrar uma lista de nomes
import 'package:rxdart/rxdart.dart';
import 'dart:core';


//void main() async {
//
//
// output.listen(print);
//
// input.add("s");
//
//}

/*
void main() {
  Carro c0 = Carro("Renaut");
  Carro c1 = Carro("Fusca");
  Carro c2 = Carro ("Nissam");

  //c1.acelerar(100);
  //c1.abastecer(50);
  //c1.lotar(2);

  /// CONSTRUÇÕES DE LISTAS
  /// List<Carro> carros = List<Carro>();
  /**
   * final carros = [];
  carros.add(c0); // p add objetos na lista
  carros.add(c1);
  carros.add(c2);*/

  ///final carros = [c0, c1, c2];

  /// mapping
  /// ao mapear a lista carros, ela só é exibida no "for", quando se usa carros.values
  final carros = { "1":c0, "2":c1 }; /// {} => Map<String,Carro>();
  carros["3"] = c2;

  print("Lista: $carros, length: ${carros.length}"); // essa chamada lista cada objeto lado a lado dentro de um []

  for(Carro c in carros.values) { // criando um laço para exibir a lista objeto por objeto em seq.

    /// String id in carros.keys :
    ///final c = carros[id];


    print(" -> ${c.nome}");
  }




}

class Carro extends Automovel with Combustivel, Pessoas {
  // desse forma fazemos a herança de classes e o mixin
  // O mix pode ser feito com mais de uma classe
  String nome;

  Carro(this.nome);

  void acelerar(int velocidade) {
    print( "Acelerando com $velocidade km/h"
           );
  }

  void lotar(int passageiros) {
    print( "Rodando com $passageiros pessoas"
           );
  }

  String toString() =>
      nome; // esse método serve para retornar o objeto sem "instance of"
}

class Combustivel {
  abastecer(int qtde) {
    print("Abastecendo $qtde L");
  }
}
/// podemos criar uma classe abstrata, com a chamada de método e instanciar novamente na classe principal pela herança
abstract class Automovel {
  void acelerar(int velocidade);
}

abstract class Pessoas{
  void lotar(int passageiros);
}
*/
