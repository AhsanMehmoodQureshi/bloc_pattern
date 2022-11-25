

import 'dart:async';

import 'package:rxdart/rxdart.dart';

class LoginBloc{
  // final _loginEmail=StreamController<String>();
  final _loginEmail= BehaviorSubject<String>();
  final _loginPassword= BehaviorSubject<String>();

  /// Getter
  Stream <String> get loginEmail=>_loginEmail.stream;
  Stream <String> get loginPassword=>_loginPassword.stream;

  /// Setter
  void get changeLoginEmail => _loginEmail.sink.add('');
  void get changeLoginPassword => _loginPassword.sink.add('');
  void dispose(){
    _loginEmail.close();
    _loginPassword.close();
  }
}