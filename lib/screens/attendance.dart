import 'package:flutter/material.dart';
import 'package:sert_attendance/widgets/leaderboard.dart';

class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(elevation: 20, child: LeaderBoard()),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xff5C54A6),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          padding: EdgeInsets.symmetric(horizontal: 70),
          height: 250,
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Student ID',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.deepPurple,
                textColor: Colors.white54,
                child: Text('Login'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
