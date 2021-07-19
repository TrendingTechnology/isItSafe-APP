import 'package:flutter/material.dart';
import 'package:is_it_safe/utils/style/themes/theme_state.dart';
import 'package:provider/provider.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: Provider.of<ThemeState>(context).theme == ThemeType.DARK,
      activeColor: Theme.of(context).accentColor,
      inactiveTrackColor: Theme.of(context).disabledColor,
      onChanged: (value) {
        Provider.of<ThemeState>(context, listen: false).theme =
            value ? ThemeType.DARK : ThemeType.LIGHT;
      },
    );
  }
}
