import 'package:flutter_web/material.dart';
import 'package:club_lime_web/club_lime_theme.dart';

class HeaderWithSubheader extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget rightWidget;
  const HeaderWithSubheader({Key key, @required this.title, this.subtitle, this.rightWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {    

    List<Widget> rowChildren = [];
    rowChildren.add(Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

            Text(
                  this.title,
                  style: subTheme.h1,
                  //style: TextStyle(fontFamily: "Open Sans"),
                ),
                Text(
                  this.subtitle ?? "",
                  style: subTheme.s2,
                ),

            ],
          ),);
    if (this.rightWidget != null) {
       rowChildren.add(this.rightWidget); 
    } 

    return Container(
      child: Row(
        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
        children: rowChildren
      ),
    );
  }
}