import 'package:flutter_web/material.dart';
import 'widgets/header_with_subheader.dart';
import 'club_lime_theme.dart';
import 'widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final loginFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: ListView(
          children: <Widget>[
             HeaderWithSubheader(title: "Profile", subtitle: "Already have an account?"),
             Padding(
               padding: const EdgeInsets.only(top: 30),
               child: TextFormField(
                      controller: loginFieldController,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Email',
                        labelText: 'Email',
                        border: OutlineInputBorder()
                      ),
                    ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 15.0),
               child: TextFormField(
                      obscureText: true,
                      controller: passwordFieldController,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: 'Your password',
                        labelText: 'Password',
                        border: OutlineInputBorder()
                ),),
             ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child:  CustomButton(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: MaterialButton(child: Text("Forgot?", style: TextStyle(
                  color: subTheme.tabbarActiveColor
                ),), onPressed: () {},),
              )
          ],
        ),
      ),
    );
  }
}