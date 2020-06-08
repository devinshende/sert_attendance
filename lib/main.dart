import 'package:flutter/material.dart';
import 'package:sert_attendance/widgets/signupform.dart';
import 'package:sert_attendance/screens/attendance.dart';

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
        '/attendance': (context) => AttendancePage(),
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
