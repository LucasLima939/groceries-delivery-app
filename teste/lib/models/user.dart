/** Esta é uma classe padrão de usuário/cliente que deverá ser mesclada futuramente
 *  Ela têm todos os atributos requeridos e está montada para ler a requisiçao da URL 
 *  do "login_api".
 *  Ela está com seus atributos mapeados para json.
 */
class Usuario {
  String login;
  String nome;
  String email;
  String token;

  List<String> roles;

  Usuario.fromJson(Map<String, dynamic> map)
      : login = map["login"],
        nome = map["nome"],
        email = map["email"],
        token = map["token"],

        /// Construção tipo Lista de Inicizalização Json
        roles = map["roles"] != null
            ? map["roles"].map<String>((role) => role.toString()).toList()
            : null;
  // Para o caso da lista de roles estar vazia, ela não pode ter null pointer, logo criamos métodos ternários

  @override
  String toString() {
    return 'Usuario{login: $login, nome: $nome, email: $email, token: $token';
  }
}
