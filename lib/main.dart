import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:is_it_safe/pages/splash_page.dart';
import 'package:is_it_safe/utils/style/themes/dark_theme.dart';
import 'package:is_it_safe/utils/style/themes/light_theme.dart';
import 'package:is_it_safe/utils/style/themes/theme_state.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeState>(
      create: (context) => ThemeState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Is It Safe?',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeState>(context).theme == ThemeType.DARK
          ? darkTheme
          : lightTheme,
      home: SplashPage(),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('pt', 'BR'),
      ],
    );
  }
}
