import 'package:flutter_web/material.dart';
import 'club_lime_theme.dart';
import 'widgets/header_with_subheader.dart';
import 'package:club_lime_web/club_lime_theme.dart';
import 'package:club_lime_web/widgets/icon_item_card.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HeaderWithSubheader(title: "News", subtitle: "Latest offers and updates"),
                Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 35.0),
                  child: Text("While you were away", style: subTheme.h2),
                ), 
                Wrap(
                  spacing: 10.0,
                  runSpacing: 30.0,
                  children: <Widget>[
                  IconListItem(),
                  IconListItem(),
                  IconListItem(),
                  IconListItem(),
                  IconListItem(),
                  IconListItem()
                ],),
                Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 35.0),
                  child: Text("Archive", style: subTheme.h2),
                ), 
                Wrap(
                  spacing: 10.0,
                  runSpacing: 30.0,
                  children: <Widget>[
                  IconListItem(),
                  IconListItem(),
                  IconListItem(),
                  IconListItem(),
                  IconListItem(),
                  IconListItem()
                ],)
              ],
            ),
          )
        ]),
    );
  }
}

