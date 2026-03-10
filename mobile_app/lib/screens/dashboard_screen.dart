
import 'package:flutter/material.dart';
import '../widgets/event_card.dart';

class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(title: Text("BetPro Dashboard")),
      body: ListView(
        children: [
          EventCard(team1:"Team A",team2:"Team B",odds1:1.8,odds2:2.2),
          EventCard(team1:"Team C",team2:"Team D",odds1:1.5,odds2:2.5)
        ]
      )
    );

  }

}
