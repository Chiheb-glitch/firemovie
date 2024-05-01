







import 'package:equatable/equatable.dart';

import '../data/auth_entity.dart';
import '../data/login_model.dart';

abstract class LoginState extends Equatable{}


class LoginLoadingState extends LoginState{

  @override
  List<Object?> get props=>[];
}



class LogincalmState extends LoginState{
  @override
  List<Object?> get props=>[];
}


class LoginLoadedState extends LoginState{
  Login services; 
  LoginLoadedState({required this.services});
  @override
  List<Object?> get props=>[services];
}


class LoginErrorState extends LoginState{
  String msg; 
  LoginErrorState({required this.msg});
  @override
  List<Object?> get props=>[];
}



class LoginTrigerState extends LoginState{
LoginEntity loginEntity;

  LoginTrigerState({required this.loginEntity});
  @override
  List<Object?> get props=>[];
}



class RegisterTrigerState extends LoginState{
RegisterEntity registerEntity;

  RegisterTrigerState({required this.registerEntity});
  @override
  List<Object?> get props=>[];
}