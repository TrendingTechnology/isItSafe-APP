import 'package:flutter/material.dart';
import 'package:is_it_safe/bloc/profile_registration_bloc.dart';
import 'package:is_it_safe/presenter/ProfileRegistrationPresenter/profile_registration_contract.dart';

class ProfileRegistrationPresenter implements ProfilePresenterContract {
  final ProfileRegistrationPageContract _contract;
  final ProfileRegistrationBloc _bloc;

  ProfileRegistrationPresenter(this._contract, this._bloc);

  final List<String> provisionalOptions = [
    "Option 1",
    "Option 2",
    "Option 3",
  ];

  final List<String> provisionalSexualOptions = [
    "Option 1",
    "Option 2",
    "Option 3",
  ];

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  doRegister() {
    // TODO: implement doRegister
  }

  @override
  enableRegisterButton() {
    // TODO: implement enableRegisterButton
  }

  List<DropdownMenuItem<String>> getDropDownItens() {
    List<DropdownMenuItem<String>> itens = [];

    for (String item in this.provisionalOptions) {
      DropdownMenuItem<String> newItem = DropdownMenuItem(
        value: item,
        child: Text(item),
      );

      itens.add(newItem);
    }

    return itens;
  }
}
