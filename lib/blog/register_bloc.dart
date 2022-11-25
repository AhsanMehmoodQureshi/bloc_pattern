



import 'dart:async';

import 'package:rxdart/rxdart.dart';

class RegisterBloc{
  final _registerUserName= BehaviorSubject<String>();
  final _registerEmail= BehaviorSubject<String>();
  final _registerPhone= BehaviorSubject<String>();
  final _registerPassword= BehaviorSubject<String>();

  /// Getter
  Stream <String> get registerUserName  => _registerUserName.stream;
  Stream <String> get registerEmail => _registerEmail.stream;
  Stream <String> get registerPhone => _registerPhone.stream;
  Stream <String> get registerPassword => _registerPassword.stream;

  /// Setter
  void get changeregisterUserName => _registerUserName.sink.add;
  void get changeregisterEmail => _registerEmail.sink.add;
  void get changeregisterPhone => _registerPhone.sink.add;
  void get changeregisterPassword => _registerPassword.sink.add;


  void dispose(){
    _registerUserName.close();
    _registerEmail.close();
    _registerPhone.close();
    _registerPassword.close();
  }
}