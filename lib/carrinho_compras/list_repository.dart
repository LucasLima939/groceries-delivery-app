/** Método para filtrar uma lista qualquer;
 *  Já com um filtro de pesquisa dinâmica e letras minúsculas e maiúsculas
 */

class ListRepository {

  List<String> list = ["Lucas", "Bea", "Seu júnior", "Dona Mary"];

  List<String> filter(String text) {
    text = text.toLowerCase();
    return list.where((item) => item.toLowerCase().contains(text)).toList();
  }

}