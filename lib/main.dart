import 'package:flutter/material.dart';
import 'package:sert_attendance/widgets/signupform.dart';
import 'package:sert_attendance/screens/attendance.dart';

void main() => runApp(SignUpApp());

class SignUpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
//        fontFamily: 'Roboto',
        primaryColor: Colors.deepPurple,
        accentColor: Colors.deepPurpleAccent,
      ),
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
        child: Container(
//          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.black12),
          width: 400,
          child: SignUpForm(),
        ),
      ),
    );
  }
}
