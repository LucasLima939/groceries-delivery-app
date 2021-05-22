import 'package:mobx/mobx.dart';
import 'package:teste/models/client.dart';
part 'validate.g.dart';

/// mobx é muito util para modelos reativos;

class Validate = ValidateBase with _$Validate;

abstract class ValidateBase with Store {
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
