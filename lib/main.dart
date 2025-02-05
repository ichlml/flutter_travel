import 'package:flutter/material.dart';
import 'package:flutter_travel/ui/pages/bonus_page.dart';
import 'package:flutter_travel/ui/pages/get_started_page.dart';
import 'package:flutter_travel/ui/pages/main_page.dart';
import 'package:flutter_travel/ui/pages/sign_up_page.dart';
import 'package:flutter_travel/ui/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashPage(),
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStartedPage(),
        '/sign-up': (context) => const SignUp(),
        '/bonus-page': (context) => const BonusPage(),
        '/main-page': (context) => const MainPage(),
      },
    );
  }
}
