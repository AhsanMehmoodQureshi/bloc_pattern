

import 'dart:async';

class Validators{
  var emailValidator=StreamTransformer<String,String>.fromHandlers(
      handleData: (email,sink){
        if(email.isEmpty){
          return sink.addError('Email can,t be empty');
        }
        if(email.length>30){
          return sink.addError('Email cannot be more than 30 characters');
        }
        if(email.length<6){
          return sink.addError('Email characters length is less than 6');
        }
        else{
          sink.add(email);
        }
      }
  );

  var userNameValidator=StreamTransformer<String,String>.fromHandlers(
      handleData: (userName,sink){
        if(userName.isEmpty){
          return sink.addError('userName can,t be empty');
        }
        if(userName.length>30){
          return sink.addError('userName cannot be more than 30 characters');
        }
        if(userName.length<6){
          return sink.addError('userName characters length is less than 6');
        }
        else{
          sink.add(userName);
        }
      }
  );

  var phoneNumberValidator=StreamTransformer<String,String>.fromHandlers(
      handleData: (phoneNumber,sink){
        if(phoneNumber.isEmpty){
          return sink.addError('phoneNumber can,t be empty');
        }
        if(phoneNumber.length>30){
          return sink.addError('phoneNumber cannot be more than 30 characters');
        }
        if(phoneNumber.length<6){
          return sink.addError('phoneNumber characters length is less than 6');
        }
        else{
          sink.add(phoneNumber);
        }
      }
  );

  var passwordValidator=StreamTransformer<String,String>.fromHandlers(
      handleData: (password,sink){
        if(password.isEmpty){
          return sink.addError('Email can,t be empty');
        }
        if(password.length<8){
          return sink.addError('Email characters length is less than 8');
        }
        else{
          sink.add(password);
        }
      }
  );

  var loginPasswordValidator=StreamTransformer<String,String>.fromHandlers(
      handleData: (password,sink){
        if(password.isEmpty){
          return sink.addError('Email can,t be empty');
        }
        if(password.length<8){
          return sink.addError('Email characters length is less than 8');
        }
        else{
          sink.add(password);
        }
      }
  );
}