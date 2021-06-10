import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:is_it_safe/pages/splash_page.dart';
import 'package:is_it_safe/utils/style/themes/base_theme.dart';

import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Is It Safe?',
      debugShowCheckedModeBanner: false,
      theme: baseTheme,
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
