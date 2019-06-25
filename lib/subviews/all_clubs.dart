import 'package:flutter_web/material.dart';
import 'package:club_lime_web/club_lime_theme.dart';

class AllClubsSection extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 0),
              child: Text("All Clubs", style: subTheme.h2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: ExpansionTile(
                title: Text("ACT Northside Clubs", style: subTheme.listItem,),
                children: <Widget>[Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[Text("ANU Club", style: subTheme.listItem,)],
                  ),
                )],
              ),
            )
        ],
      ),
    );
  }
}