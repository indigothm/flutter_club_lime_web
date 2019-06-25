import 'package:flutter_web/material.dart';
import 'package:club_lime_web/club_lime_theme.dart';

class HorizontalCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;
    var cardWidth = screenWidth * 0.85;
    if (screenWidth > 800) {
      cardWidth = MediaQuery.of(context).size.width * 0.25;
    }
    
    return Container(
      margin: EdgeInsets.only(top: 30),
      height: cardWidth * 0.56 + 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(width: 30,),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
              Text("Club Name", style: subTheme.h3),
              Text("Club Address",  style: subTheme.s3),
              Container(margin: EdgeInsets.only(top: 15.0, right: 15.0,),
              height: cardWidth * 0.56, width: cardWidth, decoration: new BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("club_promo.png"),
                  fit: BoxFit.cover
                ),
                color: Colors.grey, 
                borderRadius: BorderRadius.all(Radius.circular(20))
              ))
           ],
          ),
           Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
              Text("Club Name", style: subTheme.h3),
              Text("Club Address",  style: subTheme.s3),
              Container(margin: EdgeInsets.only(top: 15.0, right: 15.0),
              height: cardWidth * 0.56, width: cardWidth, decoration: new BoxDecoration(
                color: Colors.grey, 
                borderRadius: BorderRadius.all(Radius.circular(20))
              ))
           ],
          ),
           Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
              Text("Club Name", style: subTheme.h3),
              Text("Club Address",  style: subTheme.s3),
              Container(margin: EdgeInsets.only(top: 15.0, right: 15.0),
              height: cardWidth * 0.56, width: cardWidth, decoration: new BoxDecoration(
                color: Colors.grey, 
                borderRadius: BorderRadius.all(Radius.circular(20))
              ))
           ],
          ),
        ],
      ),
    );
  }
}