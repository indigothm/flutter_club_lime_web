import 'package:flutter_web/material.dart';

final clubLimeLight = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xff9DCB3A),
  accentColor: Color(0xff9DCB3A),
  dividerColor: Color(0xffF4F4F4),
  canvasColor: Color(0xffFFFFFF),
  backgroundColor: Color(0xffFFFFFF),
  fontFamily: 'Open Sans',
);


abstract class ThemeHelper {
  //TBD
}

class ThemeHelperLight extends ThemeHelper {
  //Text Styles
  final h1 = TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Color(0xff323232), fontFamily: 'Open Sans');
  final s2 = TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal, color: Color(0xff989292), fontFamily: 'Open Sans');
  final h2 = TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Color(0xff323232), fontFamily: 'Open Sans');
  final body = TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: Color(0xff989292), fontFamily: 'Open Sans');
  final h3 = TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Color(0xff323232), fontFamily: 'Open Sans');
  final s3 = TextStyle(fontSize: 13.0, fontWeight: FontWeight.normal, color: Color(0xff9DCB3A), fontFamily: 'Open Sans');
  final listItem = TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: Color(0xff828282), fontFamily: 'Open Sans');
  final h4 = TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Color(0xff323232), fontFamily: 'Open Sans');
  final s4 = TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, color: Color(0xff9DCB3A), fontFamily: 'Open Sans');
  //Color
  final tabbarActiveColor =  Color(0xff9DCB3A);
  final tabbarInactiveColor = Color(0xff988F8F);
  final buttonTextColor = Colors.white;
}

//Replace when introducing Dark Theme
final subTheme = ThemeHelperLight();


