import 'package:flutter/material.dart';

const kLeaderboardStyle =
    TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold);

class LeaderBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LeaderboardTile(
            hours: 300,
          ),
          LeaderboardTile(
            hours: 200,
          ),
          LeaderboardTile(
            hours: 100,
          ),
        ],
      ),
    );
  }
}

class LeaderboardTile extends StatelessWidget {
  LeaderboardTile({this.hours});
  final int hours;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '1',
          style: TextStyle(fontSize: 30),
        ),
        Text('First Last'),
        Text('$hours hours'),
      ],
    );
  }
}
