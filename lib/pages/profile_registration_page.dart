import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:is_it_safe/bloc/profile_registration_bloc.dart';
import 'package:is_it_safe/components/basic_button_item.dart';
import 'package:is_it_safe/components/theme_switch.dart';
import 'package:is_it_safe/generated/l10n.dart';
import 'package:is_it_safe/presenter/ProfileRegistrationPresenter/profile_registration_contract.dart';
import 'package:is_it_safe/presenter/ProfileRegistrationPresenter/profile_registration_presenter.dart';
import 'package:is_it_safe/utils/helpers/helpers.dart';
import 'package:is_it_safe/utils/helpers/manage_dialogs.dart';
import 'package:is_it_safe/utils/style/colors.dart';
import 'package:is_it_safe/utils/style/text_size.dart';

class ProfileRegistrationPage extends StatefulWidget {
  const ProfileRegistrationPage({Key? key}) : super(key: key);

  @override
  _ProfileRegistrationPageState createState() =>
      _ProfileRegistrationPageState();
}

class _ProfileRegistrationPageState extends State<ProfileRegistrationPage>
    implements ProfileRegistrationPageContract {
  late ProfileRegistrationPresenter _presenter = ProfileRegistrationPresenter(
    this,
    ProfileRegistrationBloc(),
  );

  @override
  onError({required String message}) {
    ManagerDialogs.showErrorDialog(context, message);
  }

  @override
  registrationSuccess() {
    // TODO: implement registrationSuccess
  }

  @override
  navigateToForgot() {
    // TODO: implement navigateToForgot
  }

  @override
  choosePicture() {
    // TODO: implement choosePicture
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _presenter.scaffoldKey,
      appBar: AppBar(
        title: Text(
          S.of(context).profileRegPageBarTitle,
          style: Theme.of(context).textTheme.headline6!,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            key: _presenter.formKey,
            child: Column(
              children: [
                // ThemeSwitch(),

                ///Choose picture
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Helpers.getColorFromTheme(
                          context: context,
                          darkModeColor: Theme.of(context).splashColor,
                          lightModeColor: splashColorLight2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Icon(
                          Icons.camera_alt,
                          color: Helpers.getColorFromTheme(
                            context: context,
                            darkModeColor: Theme.of(context).buttonColor,
                            lightModeColor: greyColor,
                          ),
                          size: MediaQuery.of(context).size.height * 0.08,
                        ),
                      ),
                    ),
                  ),
                ),

                ///Choose picture text
                Padding(
                  padding: const EdgeInsets.only(bottom: 35.0),
                  child: Text(
                    S.of(context).profileRegPageTitle,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),

                ///Input birthday
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: S.of(context).dateOfBirth,
                    ),
                  ),
                ),

                ///Input gender
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      labelText: S.of(context).gender,
                      labelStyle: Theme.of(context).textTheme.subtitle2,
                    ),
                    dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                    value: _presenter.provisionalOptions[0],
                    onChanged: (String? value) => setState(() {}),
                    items: _presenter.getDropDownItens(),
                  ),
                ),

                ///Input sexual orientation
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: S.of(context).sexualOrientation,
                      labelStyle: Theme.of(context).textTheme.subtitle2,
                    ),
                    dropdownColor: Theme.of(context).scaffoldBackgroundColor,
                    value: _presenter.provisionalSexualOptions[0],
                    onChanged: (String? value) => setState(() {}),
                    items: _presenter.getDropDownItens(),
                  ),
                ),

                ///Forgot any button
                Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: S.of(context).forgotGenderText + " ",
                          style: Theme.of(context).textTheme.button!.copyWith(
                                fontSize: TextSize.xxSmall,
                                color: Helpers.getColorFromTheme(
                                  context: context,
                                  darkModeColor: Theme.of(context).buttonColor,
                                  lightModeColor:
                                      Theme.of(context).disabledColor,
                                ),
                              ),
                        ),
                        TextSpan(
                          text: S.of(context).forgotGenderSubtext,
                          recognizer: TapGestureRecognizer()
                            ..onTap = navigateToForgot(),
                          style: Theme.of(context).textTheme.button!.copyWith(
                                fontSize: TextSize.xxSmall,
                                decoration: TextDecoration.underline,
                                color: Helpers.getColorFromTheme(
                                  context: context,
                                  darkModeColor: Theme.of(context).accentColor,
                                  lightModeColor:
                                      Theme.of(context).primaryColor,
                                ),
                              ),
                        )
                      ],
                    ),
                  ),
                ),

                ///Skip and Register buttons
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ///Skip button
                      GestureDetector(
                        onTap: () => _presenter.doRegister,
                        child: Text(
                          S.of(context).skipForNow.toUpperCase(),
                          style: Theme.of(context).textTheme.button!.copyWith(
                                color: Helpers.getColorFromTheme(
                                  context: context,
                                  darkModeColor: Theme.of(context).buttonColor,
                                  lightModeColor: primaryTextColorLight,
                                ),
                              ),
                        ),
                      ),

                      ///Register button
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: BasicButton(
                          text: S.of(context).register,
                          onTap: () => _presenter.doRegister,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
