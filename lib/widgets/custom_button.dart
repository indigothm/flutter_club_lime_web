import 'package:flutter_web/material.dart';
import 'package:club_lime_web/club_lime_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
                          height: 45,
                          color: subTheme.tabbarActiveColor,
                          textColor: subTheme.buttonTextColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          child: Text('Login'),
                          onPressed: () {
                          },
                        ),
    );
  }
}