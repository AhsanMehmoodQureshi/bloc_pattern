

import 'dart:async';

import 'package:bloc_pattern/blog/validators.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends Validators{
  // final _loginEmail=StreamController<String>();
  final _loginEmail= BehaviorSubject<String>();
  final _loginPassword= BehaviorSubject<String>();

  /// Getter
  Stream <String> get loginEmail => _loginEmail.stream.transform(emailValidator);
  Stream <String> get loginPassword => _loginPassword.stream.transform(loginPasswordValidator);

  Stream<bool> get isValid => Rx.combineLatest2(loginEmail, loginPassword, (a, b) => true);

  /// Setter
  void get changeLoginEmail => _loginEmail.sink.add;
  void get changeLoginPassword => _loginPassword.sink.add;
  /// Transformers

  void submit(){
    if (kDebugMode) {
        print(_loginEmail.value);
    }
    if (kDebugMode) {
      print(_loginPassword.value);
    }
  }
  void dispose(){
    _loginEmail.close();
    _loginPassword.close();
  }
}