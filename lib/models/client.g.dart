// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Client on _ClientBase, Store {
  final _$nameAtom = Atom(name: '_ClientBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_ClientBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$cpfAtom = Atom(name: '_ClientBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  final _$passwordAtom = Atom(name: '_ClientBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_ClientBaseActionController = ActionController(name: '_ClientBase');

  @override
  dynamic changeName(String value) {
    final _$actionInfo = _$_ClientBaseActionController.startAction(
        name: '_ClientBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$_ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo = _$_ClientBaseActionController.startAction(
        name: '_ClientBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCpf(String value) {
    final _$actionInfo = _$_ClientBaseActionController.startAction(
        name: '_ClientBase.changeCpf');
    try {
      return super.changeCpf(value);
    } finally {
      _$_ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePassword(String value) {
    final _$actionInfo = _$_ClientBaseActionController.startAction(
        name: '_ClientBase.changePassword');
    try {
      return super.changePassword(value);
    } finally {
      _$_ClientBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
cpf: ${cpf},
password: ${password}
    ''';
  }
}
