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

class ProfileRegistrationPage extends StatefulWidget {
  const ProfileRegistrationPage({Key? key}) : super(key: key);

  @override
  _ProfileRegistrationPageState createState() =>
      _ProfileRegistrationPageState();
}

class _ProfileRegistrationPageState extends State<ProfileRegistrationPage>
    implements ProfileRegistrationPageContract {
  late ProfileRegistrationPresenter _registrationPresenter =
      ProfileRegistrationPresenter(this, ProfileRegistrationBloc());

  @override
  navigateToHome() {
    // TODO: implement navigateToHome
  }

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
  Widget build(BuildContext context) {
    return Scaffold(
      key: _registrationPresenter.scaffoldKey,
      appBar: AppBar(
        title: Text(S.of(context).profileRegPageBarTitle,
            style: Theme.of(context).textTheme.headline6!),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 25, left: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ThemeSwitch(),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).splashColor,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(40),
                      child: Icon(
                        Icons.camera_alt,
                        color: Theme.of(context).buttonColor,
                        size: MediaQuery.of(context).size.height * 0.08,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${S.of(context).profileRegPageTitle}\n",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: S.of(context).profileRegPageSubtitle,
                        style: Theme.of(context).textTheme.subtitle1!,
                      ),
                    ],
                  ),
                ),
              ),
              Form(
                key: _registrationPresenter.formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: S.of(context).dateOfBirth),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            labelText: S.of(context).gender,
                            labelStyle: Theme.of(context).textTheme.subtitle2),
                        dropdownColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        value: _registrationPresenter.provisionalOptions[0],
                        onChanged: (String? value) => setState(() {}),
                        items: _registrationPresenter.getDropDownItens(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                            labelText: S.of(context).sexualOrientation,
                            labelStyle: Theme.of(context).textTheme.subtitle2),
                        dropdownColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        value:
                            _registrationPresenter.provisionalSexualOptions[0],
                        onChanged: (String? value) => setState(() {}),
                        items: _registrationPresenter.getDropDownItens(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 45.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Text(
                            S.of(context).forgotGenderText,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.button!.copyWith(
                                  color: Helpers.getColorFromTheme(
                                      context: context,
                                      darkModeColor:
                                          Theme.of(context).buttonColor,
                                      lightModeColor:
                                          Theme.of(context).disabledColor),
                                ),
                          ),
                        ),
                        GestureDetector(
                          child: Text(
                            S.of(context).forgotGenderSubtext,
                            style: Theme.of(context).textTheme.button!.copyWith(
                                color: Helpers.getColorFromTheme(
                                    context: context,
                                    darkModeColor:
                                        Theme.of(context).backgroundColor,
                                    lightModeColor:
                                        Theme.of(context).primaryColor),
                                decoration: TextDecoration.underline),
                          ),
                          onTap: () => null,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => null,
                      child: Text(
                        S.of(context).skipForNow.toUpperCase(),
                        style: Theme.of(context).textTheme.button!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Helpers.getColorFromTheme(
                                  context: context,
                                  darkModeColor: Theme.of(context).buttonColor,
                                  lightModeColor:
                                      Theme.of(context).accentColor),
                            ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.37,
                      child: BasicButton(text: S.of(context).register),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
