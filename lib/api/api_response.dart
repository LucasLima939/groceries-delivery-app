/**
 * Esse é uma classe genérica de tratamento de erros e
 * autorização para login, ela é tipada com um tipo genérico
 * que recebve nossa classe e faz a verificação de ocorrências.
 * Ela retorna um boolean de "ok" e "não-ok".
 */

class ApiResponse<T> {
  bool ok;
  String msg;
  T result;

  ApiResponse.ok(this.result) {
    ok = true;
  }

  ApiResponse.error(this.msg) {
    ok = false;
  }
}
