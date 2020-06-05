import 'package:mobx/mobx.dart';
//part 'controller.g.dart'; //build do part: "nomeDoArquivo.g.dart"
//
//class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{
  /** O Store diz que o controller está apto para
   * receber uma geração de código baseado nele mesmo;
   * É necessário a definição de abstract;
   * O mapping do controller cria a código automaticamente na Classe;
   */

  @observable
  int counter = 0;

  @action
  increment() {
    counter++;
  }

}