

import 'dart:async';

main() {

  StreamController<String> controller = StreamController<String>(); // entre <> passo o tipo do stream
  Stream<String> output = controller.stream; // setto como variável
  Stream<int> output2 = controller.stream.map((data)=> data.length); // modifico o <tipo> da stream para int
  // o .map modifica o tipo do stream para qualquer coisa que eu quiser, nesse caso, pedi para retornar o temanho da string
  output.listen((String data) {

    print(data);

  });

  output2.listen((int data){
    print(data);
  });

  controller.add("Hello world");

}