import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:is_it_safe/bloc/login_bloc.dart';
import 'package:is_it_safe/components/basic_button_item.dart';
import 'package:is_it_safe/components/theme_switch.dart';
import 'package:is_it_safe/generated/l10n.dart';
import 'package:is_it_safe/pages/registration_page.dart';
import 'package:is_it_safe/presenter/LoginPresenter/login_presenter.dart';
import 'package:is_it_safe/presenter/LoginPresenter/login_presenter_contract.dart';
import 'package:is_it_safe/utils/helpers/helpers.dart';
import 'package:is_it_safe/utils/helpers/manage_dialogs.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginPageContract {
  late LoginPresenter _presenter = LoginPresenter(this, LoginBloc());

  @override
  void initState() {
    super.initState();
  }

  @override
  loginSuccess() {
    // TODO: implement loginSuccess
  }

  @override
  onError({required String message}) {
    setState(() {
      ManagerDialogs.showErrorDialog(context, message);
    });
  }

  @override
  navigateToForgotPassword() {
    // TODO: implement navigateToForgotPassword
  }

  @override
  navigateToRegister() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegistrationPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _presenter.scaffoldKey,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Form(
              key: _presenter.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ThemeSwitch(),

                  ///Text
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "${S.of(context).loginPageTitle}\n",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: S.of(context).loginPageSubtitle,
                            style: Theme.of(context).textTheme.headline5,
                          )
                        ],
                      ),
                    ),
                  ),

                  ///Username Field
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.0),
                    child: TextFormField(
                      controller: _presenter.usernameController,
                      decoration: InputDecoration(
                        hintText: S.of(context).username,
                      ),
                      onChanged: (value) => _presenter.enableButton(),
                      validator: (value) {
                        if (!Helpers.validateName(value!)) {
                          return S.of(context).loginErrorUsername;
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),

                  ///Password Field
                  TextFormField(
                    controller: _presenter.passwordController,
                    decoration: InputDecoration(
                      hintText: S.of(context).password,
                    ),
                    obscureText: true,
                    onChanged: (value) => _presenter.enableButton(),
                    validator: (value) {
                      if (!Helpers.validatePassword(value!)) {
                        return S.of(context).loginErrorPassword;
                      } else {
                        return null;
                      }
                    },
                  ),

                  ///Forgot the password button
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        child: Text(
                          S.of(context).forgotThePasswordBtn,
                          style:
                              Theme.of(context).textTheme.subtitle2!.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                        onPressed: navigateToForgotPassword,
                      ),
                    ),
                  ),

                  ///Login button
                  StreamBuilder<bool>(
                    stream: _presenter.bloc.btnStream,
                    initialData: false,
                    builder: (context, snapshot) {
                      return BasicButton(
                        text: S.of(context).login,
                        onTap: () => _presenter.doLogin(),
                      );
                    },
                  ),

                  ///Don't have an account button
                  Padding(
                    padding: EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).dontHaveAccount,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        TextButton(
                          onPressed: navigateToRegister,
                          child: Text(
                            S.of(context).signUp,
                            style: TextStyle(
                              color: Helpers.getColorFromTheme(
                                context: context,
                                darkModeColor: Theme.of(context).accentColor,
                                lightModeColor: Theme.of(context).primaryColor,
                              ),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
