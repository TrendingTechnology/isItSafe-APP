import 'package:flutter/material.dart';
import 'package:is_it_safe/bloc/profile_registration_bloc.dart';
import 'package:is_it_safe/presenter/ProfileRegistrationPresenter/profile_registration_contract.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ProfileRegistrationPresenter implements ProfilePresenterContract {
  final ProfileRegistrationPageContract _contract;
  final ProfileRegistrationBloc _bloc;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  final dateBirthController = TextEditingController();
  final MaskTextInputFormatter dateMask =
      MaskTextInputFormatter(mask: "##/##/####");

  String genderOption = "";
  String sexualOption = "";

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

  @override
  doRegister() {
    // TODO: implement doRegister
  }

  @override
  enableRegisterButton() async {
    await _bloc.enableRegisterButton(
        dateBirthController.text, sexualOption, genderOption);
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

  List<DropdownMenuItem<String>> getSecondDropDownItens() {
    List<DropdownMenuItem<String>> itens = [];

    for (String item in this.provisionalSexualOptions) {
      DropdownMenuItem<String> newItem = DropdownMenuItem(
        value: item,
        child: Text(item),
      );

      itens.add(newItem);
    }

    return itens;
  }
}
