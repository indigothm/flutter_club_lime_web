import 'package:flutter_web/material.dart';
import 'package:club_lime_web/club_lime_theme.dart';


class IconListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;
    var cardWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 500) {
      cardWidth = 400;
    }

    return Container(
      width: cardWidth,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
              width: 300,  
              child:
              Row(children: <Widget> [
              Container(
                width: 80,
                height: 80,
                decoration: new BoxDecoration(
                      color: Colors.grey, 
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [BoxShadow(color: Color.fromARGB(26, 0, 0, 0), 
                      blurRadius: 20.0,
                      spreadRadius: 5.0,
                      offset: Offset(
                          0.0, // horizontal, move right 10
                          4.0, // vertical, move down 10
                      ),)],
                      )
                ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text("Title", style: subTheme.h4,),
                  Text("Subtitle", style: subTheme.s4,)
                ],),
              ),
              ])),
            
          //  Container(
          //    width: 7,
          //    height: 11,
          //    decoration: new BoxDecoration(
          //             image: DecorationImage(
          //               image: AssetImage("assets/icons/Disclosure_Indicator.png"),
          //               fit: BoxFit.cover
          //             ),
          //           ),
          //  )
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 25.0),
          //   child: CustomDivider(),
          // )
        ],
      ),
    );
  }
}