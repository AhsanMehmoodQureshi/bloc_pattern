



import 'dart:async';
import 'package:bloc_pattern/blog_test/validators.dart';
import 'package:rxdart/rxdart.dart';


class RegisterBloc with Validators{
  final _registerUserName= BehaviorSubject<String>();
  final _registerEmail= BehaviorSubject<String>();
  final _registerPhone= BehaviorSubject<String>();
  final _registerPassword= BehaviorSubject<String>();

  /// Getter
  Stream <String> get registerUserName  => _registerUserName.stream.transform(userNameValidator);
  Stream <String> get registerEmail => _registerEmail.stream.transform(emailValidator);
  Stream <String> get registerPhone => _registerPhone.stream.transform(phoneNumberValidator);
  Stream <String> get registerPassword => _registerPassword.stream.transform(passwordValidator);

  Stream <bool> get isValid => Rx.combineLatest4(registerUserName, registerEmail, registerPhone,
      registerPassword, (a, b, c, d) => true);

  /// Setter
  void get changeUserName => _registerUserName.sink.add;
  void get changeEmail => _registerEmail.sink.add;
  void get changePhone => _registerPhone.sink.add;
  void get changePassword => _registerPassword.sink.add;


  void dispose(){
    _registerUserName.close();
    _registerEmail.close();
    _registerPhone.close();
    _registerPassword.close();
  }
}