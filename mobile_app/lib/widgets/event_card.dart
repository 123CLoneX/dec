
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {

  final String team1;
  final String team2;
  final double odds1;
  final double odds2;

  EventCard({required this.team1, required this.team2, required this.odds1, required this.odds2});

  @override
  Widget build(BuildContext context){

    return Card(
      child: ListTile(
        title: Text(team1 + " vs " + team2),
        subtitle: Row(
          children: [
            ElevatedButton(onPressed: (){}, child: Text(odds1.toString())),
            SizedBox(width:10),
            ElevatedButton(onPressed: (){}, child: Text(odds2.toString()))
          ]
        )
      )
    );

  }

}
