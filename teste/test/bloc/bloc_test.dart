import 'package:flutter_test/flutter_test.dart';
import 'package:teste/bloc.dart';

main() {
  Bloc bloc;

  // ciclo de vida de inicialização do teste "setup is mandatory"
  setUp(() {
    bloc = Bloc(); // setup serve para instanciar o bloc e preparar pro teste ?
  });

  test("Bloc send text and return list", () {
    expect(
        bloc.output,
        emitsInAnyOrder([
          ["Lucas", "Seu júnior"],
          ["Lucas"],
          ["Bea", "Seu júnior"],
        ]));

    /// utilizando o padrão Strem, recomenda-se colocar o listen (output) antes do input
    bloc.input.add("Lucas");
    bloc.input.add("s");
    bloc.input.add("e");
  });
}
