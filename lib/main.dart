import 'package:flutter/material.dart';
import 'Screens/Wellcome/wellcome_screen.dart';
import 'Screens/Login/login_screen.dart';
import 'Screens/SignUp/signup_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => Wellcome(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => Login(),
      // When navigating to the "/third" route, build the thirdScreen widget.
      '/third': (context) => SignUp(),
    },
  ));
}
