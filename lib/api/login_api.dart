import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:teste/models/usuario.dart';
import 'api_response.dart';

/** Esta é uma classe de tratamento de login
 *  Ela está conectada à uma url e sua lista de usuarios
 *  Mapeia e converte de json
 *  Para conversar com a aplicação, realizando a validação do usuário
 */

class LoginApi {
  static Future<ApiResponse<Usuario>> login(String login, String senha) async {
    try {
      var url = 'https://carros-springboot.herokuapp.com/api/v2/login';

      Map<String, String> headers = {"Content-Type": "application/json"};

      Map params = {"username": login, "password": senha};

      String s =
          json.encode(params); // converte de json para string e pode ser lido

      print(">> $s");

      var response = await http.post(
        url,
        body: s,
        headers: headers,
      );
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      /// A conversão de json para map só se dá quando é um objeto, ou seja, dentro de {} na URL
      /// Listas vão dentro de [] e transcritas de formas diferentes
      Map mapResponse = json.decode(
          response.body); //recebe string em formato json e retorna o map

      if (response.statusCode == 200) {
        final user = Usuario.fromJson(mapResponse);

        user.save(); // método que guarda as preferências da aplicação

        return ApiResponse.ok(user);
      }

      return ApiResponse.error(mapResponse["error"]);
    } catch (error, exception) {
      print("Erro no login $error > $exception");

      return ApiResponse.error("Não foi possível fazer o login.");
    }
  }
}
