import 'package:flutter/material.dart';
import 'package:is_it_safe/utils/style/themes/theme_state.dart';
import 'package:provider/provider.dart';

class Helpers {
  static bool validateName(String name) {
    if (name.isEmpty) {
      return false;
    }
    return true;
  }

  static bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern as String);
    return regex.hasMatch(value.trim());
  }

  static bool validatePassword(String value) {
    Pattern pattern =
        r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d][\w~@#$%^&*+=`|{}:;!.?\"()\[\]-]{7,}$';
    RegExp regex = new RegExp(pattern as String);
    return regex.hasMatch(value.trim());
  }

  static String? getLinkFromText(String value) {
    String? finalValue;
    Pattern pattern =
        r'((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?';
    RegExp regex = new RegExp(pattern as String);
    Iterable<RegExpMatch> matches = regex.allMatches(value);

    if (matches.length > 0) {
      finalValue = value.substring(matches.first.start, matches.first.end);
    }

    return finalValue;
  }

  static String formatterDateFromAPI(String date) {
    var split = date.split("-");
    return "${split[2] + '/' + split[1] + '/' + split[0]}";
  }

  static Color getColorFromTheme({
    required BuildContext context,
    required Color darkModeColor,
    required Color lightModeColor,
  }) {
    if (Provider.of<ThemeState>(context).theme == ThemeType.DARK) {
      return darkModeColor;
    }
    return lightModeColor;
  }
}
