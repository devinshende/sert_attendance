import 'package:flutter/material.dart';
import 'package:sert_attendance/widgets/leaderboard.dart';

class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(elevation: 20, child: LeaderBoard()),
      body: Container(
        color: Colors.deepPurple,
      ),
    );
  }
}
