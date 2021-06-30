import 'package:flutter/material.dart';
import 'package:is_it_safe/components/isItsafeButtonComponent.dart';
import 'package:is_it_safe/generated/l10n.dart';
import 'package:is_it_safe/utils/helpers/helpers.dart';
import 'package:is_it_safe/utils/style/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(right: 22.0, left: 22.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 68,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "${S.of(context).loginPageGreetText1_0}\n",
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          TextSpan(
                              text: "${S.of(context).loginPageGreetText1_1}",
                              style: Theme.of(context).textTheme.headline5)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170.0),
                  child: FormComponent(
                      formKey: _formKey,
                      userNameController: _userNameController,
                      passwordController: _passwordController),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text(
                      S.of(context).loginButtonText1_0,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: whiteColor,
                          ),
                    ),
                    onPressed: () => null,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: IsItSafeButtonComponent(
                    buttonText: S.of(context).loginButtonText1_1,
                    buttonFunction: () => null,
                    whiteFont: true,
                    color: accentColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0, bottom: 20.0),
                  child: IsItSafeButtonComponent(
                    buttonText: S.of(context).loginButtonText1_2,
                    buttonFunction: () => null,
                    whiteFont: false,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FormComponent extends StatelessWidget {
  const FormComponent({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController userNameController,
    required TextEditingController passwordController,
  })  : _formKey = formKey,
        _userNameController = userNameController,
        _passwordController = passwordController,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _userNameController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 18.0),
            child: TextFormField(
              controller: _userNameController,
              validator: (value) {
                if (Helpers.validateName(value)) {
                  return S.of(context).loginFormFieldTip2_0;
                } else {
                  return null;
                }
              },
              decoration:
                  InputDecoration(hintText: S.of(context).loginFormFieldTip1_0),
            ),
          ),
          TextFormField(
            controller: _passwordController,
            validator: (value) {
              if (Helpers.validatePassword(value!)) {
                return S.of(context).loginFormFieldTip2_0;
              } else {
                return null;
              }
            },
            decoration:
                InputDecoration(hintText: S.of(context).loginFormFieldTip1_1),
          ),
        ],
      ),
    );
  }
}
