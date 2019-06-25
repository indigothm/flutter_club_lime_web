import 'package:flutter_web/material.dart';
import 'club_lime_theme.dart';
import 'widgets/header_with_subheader.dart';
import 'widgets/horizontal_cards.dart';
import 'widgets/custom_divider.dart';
import 'subviews/all_clubs.dart';


class Gyms extends StatefulWidget {
  @override
  _GymsState createState() => _GymsState();
}

class _GymsState extends State<Gyms> {
  @override
  Widget build(BuildContext context) {
    return 
      SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
            padding: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HeaderWithSubheader(title: "Clubs", subtitle: "Explore our facilities", rightWidget: Container(child: Image.asset('logo.png', width: 53, height: 53,),)),
                Container(
                  margin: EdgeInsets.only(top:25, bottom: 25),
                  child: CustomDivider(),), 
              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text("Nearby", style: subTheme.h2),
            ), 
            HorizontalCards(),
            AllClubsSection()
          ],
        ),
      );
  }
}