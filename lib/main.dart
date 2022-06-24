import 'package:flutter/material.dart';
// import 'package:flutter_application_1/ui/characters_screen/characters_list.dart';
// import 'package:flutter_application_1/constants/app_colors.dart';
// import 'package:flutter_application_1/characters_list.dart';
// import 'package:flutter_application_1/ui/login/login_screen.dart';
import 'package:flutter_application_1/ui/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ru', 'RU'),
      supportedLocales: S.delegate.supportedLocales,
      home: Builder(
        builder: (BuildContext context) {
          return const SplashScreen();
        },
      ),
    );
  }
}
