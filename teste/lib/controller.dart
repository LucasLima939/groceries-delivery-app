import 'package:mobx/mobx.dart';
import 'models/client.dart';
part 'controller.g.dart';

/// mobx é muito util para modelos reativos;

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  var client = Client();

  @computed
  bool get isValid {
    return validateName() == null &&
        validateEmail() == null &&
        validateCpf() == null &&
        validatePassword() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return "Digite o seu nome";
    } else if (client.name.length < 3) {
      return "Digite seu nome completo";
    }
    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return "Digite o seu email";
    } else if (!client.email.contains("@")) {
      return "O email precisa ser um email válido";
    }
    return null;
  }

  String validateCpf() {
    if (client.cpf == null || client.cpf.isEmpty) {
      return "Digite apenas números";
    } else if (client.cpf.length < 11 || client.cpf.length > 11) {
      return "Digite um CPF válido";
    }
    return null;
  }

  String validatePassword() {
    if (client.password == null || client.password.isEmpty) {
      return "Digite sua senha";
    } else if (client.password.length < 3) {
      return "Sua senha é muito curta";
    }
    return null;
  }
}
