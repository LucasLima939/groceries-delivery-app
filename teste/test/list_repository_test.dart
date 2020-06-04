import 'package:flutter_test/flutter_test.dart';
import 'package:teste/carrinhoFinalizarCompras/listRepository.dart';

main() {

  ListRepository listRepository = ListRepository();

  setUp(() {
    listRepository = ListRepository();
  });

  test("List name filter", () {

    expect(listRepository.filter("Lucas"), ["Lucas"]);
    expect(listRepository.filter("a"), ["Lucas", "Bea", "Dona Mary"]);
    expect(listRepository.filter("s"), ["Lucas", "Seu júnior"]);




  });

}