import 'package:flutter/material.dart';
import 'package:sert_attendance/widgets/signupform.dart';

void main() => runApp(SignUpApp());

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.deepPurple,
          accentColor: Colors.deepPurpleAccent),
      routes: {
        '/': (context) => SignUpScreen(),
        '/welcome': (context) => WelcomeScreen(),
      },
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 400,
          child: SignUpForm(),
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
