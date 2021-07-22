import 'package:flutter/material.dart';
import 'package:is_it_safe/components/basic_button_item.dart';
import 'package:is_it_safe/components/theme_switch.dart';
import 'package:is_it_safe/generated/l10n.dart';
import 'package:is_it_safe/utils/constants.dart';
import 'package:is_it_safe/utils/helpers/helpers.dart';

class ProfileRegistrationPage extends StatefulWidget {
  const ProfileRegistrationPage({Key? key}) : super(key: key);

  @override
  _ProfileRegistrationPageState createState() =>
      _ProfileRegistrationPageState();
}

class _ProfileRegistrationPageState extends State<ProfileRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).profileRegPageBarTitle,
            style: Theme.of(context).textTheme.headline6!),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
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
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Form(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration:
                        InputDecoration(hintText: S.of(context).dateOfBirth),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: DropdownButton(
                  value: Constants.provisionalOptions[0],
                  onChanged: (String? value) => setState(() {}),
                  items: getDropDownItens(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: DropdownButton<String>(
                  value: Constants.provisionalSexualOptions[0],
                  onChanged: (String? value) => setState(() {}),
                  items: getDropDownItens(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 45.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Text(
                            S.of(context).forgotGenderText,
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                        GestureDetector(
                          child: Text(
                            S.of(context).forgotGenderSubtext,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color: Theme.of(context).backgroundColor,
                                    decoration: TextDecoration.underline),
                          ),
                          onTap: () => null,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: GestureDetector(
                        onTap: () => null,
                        child: Text(
                          S.of(context).skipForNow.toUpperCase(),
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    color: Theme.of(context).buttonColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.40,
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

  List<DropdownMenuItem<String>> getDropDownItens() {
    List<DropdownMenuItem<String>> itens = [];

    for (String item in Constants.provisionalOptions) {
      DropdownMenuItem<String> newItem = DropdownMenuItem(
        value: item,
        child: Text(item),
      );

      itens.add(newItem);
    }

    return itens;
  }
}
