import 'package:flutter/material.dart';
import 'package:moneify/screenspackage/loginscreen.dart';
import 'package:moneify/screenspackage/welcomescreen.dart';
import 'package:moneify/screenspackage/registrationscreen.dart';
import 'package:moneify/screenspackage/appscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
       ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context)=>WelcomeScreen(),
        LoginScreen.id: (context)=>LoginScreen(),
        RegistrationScreen.id: (context)=>RegistrationScreen(),
        AppScreen.id: (context)=>AppScreen(),
      },
    );
  }
}
