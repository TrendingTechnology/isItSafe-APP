import 'package:flutter/material.dart';
import 'package:is_it_safe/bloc/login_bloc.dart';
import 'package:is_it_safe/service/login_service.dart';

import 'login_presenter_contract.dart';

class LoginPresenter implements LoginPresenterContract {
  final LoginPageContract _contract;
  final LoginBloc bloc;
  late final LoginService _service;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  LoginPresenter(this._contract, this.bloc) {
    _service = LoginService();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  doLogin() async {
    formKey.currentState!.validate();
    try {
      await _service.doLogin(
        username: usernameController.text,
        password: passwordController.text,
      );
    } catch (e) {
      _contract.onError(message: e.toString());
    }
  }

  @override
  enableButton() async {
    await bloc.enableButton(
      username: usernameController.text,
      password: passwordController.text,
    );
  }
}
