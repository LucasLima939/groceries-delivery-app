import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:teste/carrinhoFinalizarCompras/listRepository.dart';

/** Este é o INICIO do nosso padrão de projeto Bloc
 *
 * O Bloc Pattern é importante para otimizarmos nossas aplicações, construindo um back-end mais rápido e dinâmico
 */
class Bloc {

  /// CONSTRUTOR PADRÃO

  BehaviorSubject<String> _controller = BehaviorSubject<String>.seeded("texto inicial");
  // para o bloc é necessário o get;
  Stream<int> get output0 => _controller.stream.map((data)=> data.length);
  Stream<String> get output01 => _controller.stream;
  Sink<String> get input0 => _controller.sink;

  /** FILTRO DE LISTAS
   *  O .map recebe o texto e retorna a lista filtrada (.toList garante esse retorno)
   *  Para filtrar diretamente, o where coloca o parâmetro de apenas retornar o item que possui o texto solicitado
   *  Por fim, a lista é filtrada e retorna apenas o texto pedido
   */

  ListRepository _listRepository = ListRepository();

  final listFilter$ = BehaviorSubject<String>(); // o $ no final indica que é controlador de fluxo que recebe uma String p filtrar
  Sink<String> get input => listFilter$.sink;
  Stream<List<String>> get output => listFilter$.stream.map(_listRepository.filter);
}
/** FIM do Bloc
 *  Abaixo temos uma breve explicação das funcionalidades do StreamController e seus variantes. Run "bloc.dart"
 */
/*
main() {

  /**
   * O padrão...
   * StreamController<tipo> controller = StreamController<tipo>();
   * ... tem características reativas básicas e com apenas um listener;
   * já o StreamController<tipo>.broadcast();...
   * ... possibilita o uso de vários listeners;
   *
   * listener signature: É determinado para informar ao stream para ele ouvir dados
   *
   * o .map modifica o input recebido para outra coisa ou tipo;
   *
   * o comando .add é um "alias" do sink.add... Logo, podemos settar o Sink<tipo> input = controller.sink...
   * ... para recebermos o input e add no controller;
   */
  StreamController<String> controller2 = StreamController<String>.broadcast();
  // Importante ressaltar que o broadcast permite que o StreamControlle tenha vários listeners
  Stream<String> output = controller2.stream; // setto como variável
  Stream<int> output2 = controller2.stream.map((data)=> data.length); // modifico o <tipo> da stream para int
  //  O input envia uma String e pedi para retornar o temanho da string (int);

  Sink<String> input = controller2.sink;

  // listener signature;
  output.listen((String data) {

    print(data);

  });

  output2.listen((int data){
    print(data);
  });

  // o input só pode ser dado depois do listener signature ser determinada

  input.add("Hello world");

  input.add("Eae mundo");


  /**
   *  O RXDart nos dá 3 tipos de controllers:
   *  BehaviorSubject<tipo> controller = new BehaviorSubject<tipo>...
   *  Por padrão, não necessita de broadcast, ele já escuta vários dados...
   *  ... também quebra o padrão de "listener signature" - > "data input";
   *  Ele escuta dados enviados até antes do lister signature ser settado;
   *
   *  Ao configurar o BehaviorSubject, posso settar um valor inicial, definido pelo .seeded()...
   *  ... esse valor inicial será do tipo do BehaviorSubject<Tipo> e é encoberto ao receber outro dado;
   *
   *  Para nos enviar o dado de forma reativa antes de ter um listener configurado, o BeahaviorSubject...
   *  ... faz o buffer do ÚLTIMO dado apenas;
   */

  BehaviorSubject<String> controller3 = BehaviorSubject<String>.seeded("texto inicial");
  Stream<String> output3 = controller3.stream;
  Stream<int> output4 = controller3.stream.map((data)=> data.length);
  Sink<String> input2 = controller3.sink;

  //input2.add("Estou enviando dados");
  //input2.add("porém só esse será mostrado");

  output3.listen((String data) {
    print(data);
  });
  output4.listen((int data){
    print(data);
  });

  /**
   * Depois de settar o bloc, tudo fica mais fácil
   * bloc.output te ajuda a criar listener signatures e inputs de dados
   *
   */

  /// Esse código de teste só funciona fora do Bloc, para tenstar, criar uma nova classe main

  Bloc bloc = Bloc();

  bloc.output0.listen((String data){
    print(data);
  });

  bloc.output01.listen((int data) {
    print(data);
  });

  bloc.addText("Text enviado via BLoC");



}
*/