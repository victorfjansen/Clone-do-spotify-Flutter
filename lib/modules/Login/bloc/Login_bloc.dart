import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:untitled/shared/helpers/showSnackBar_helper.dart';

import '../../../shared/data/DAOS/User_DAO.dart';
import '../../../shared/helpers/NavigateByName_helper.dart';
import '../services/login_service.dart';

class LoginBloc {
  static const LoginService _loginService = LoginService();
  late final UserDao userDao = UserDao();

  BehaviorSubject<String> emailController = BehaviorSubject();
  Stream<String> get emailStream => emailController.stream;
  emailValue() => emailController.value;

  BehaviorSubject<String> passwordController = BehaviorSubject();
  Stream<String> get passwordStream => passwordController.stream;
  passwordValue() => passwordController.value;

  void authenticateUser(
      {required GlobalKey<FormState> formKey,
      required BuildContext context}) async {
    if (formKey.currentState!.validate()) {
      final result = await _loginService.authenticateUser(
          username: emailValue(), password: passwordValue());
      result
          ? _registerUserAndNavigate(context: context, username: emailValue(), password: passwordValue())
          : showSnackBar(
              message: 'Login ou senha inválidos, tente novamente!',
              context: context);
    }
  }

  Future<void> _registerUserAndNavigate({required BuildContext context, required String username, required String password})async {
      await userDao.create(username: username, password: password);
      navigateByName(context: context, routeName: '/home');
  }

  void automaticAuth({required BuildContext context}) async {
    try{
      final List foundUser = await  userDao.get();
      await _registerUserAndNavigate(context: context, username: foundUser.first['username'], password: foundUser.first['password']);
    } catch (e){
      await userDao.delete();
    }
  }

  dispose() {
    emailController.close();
  }
}
