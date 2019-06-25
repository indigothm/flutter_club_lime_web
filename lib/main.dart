import 'package:flutter_web/material.dart';
import 'widgets/header_with_subheader.dart';
import 'club_lime_theme.dart';
import 'gyms.dart';
import 'news.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
       List<Widget> pages = [Gyms(), NewsPage(), LoginScreen()];
      var currentIndex = 0;


    return MaterialApp(
      title: 'Club Lime - Flutter Web',
      theme: clubLimeLight,
      home: Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: subTheme.tabbarInactiveColor,
        selectedItemColor: subTheme.tabbarActiveColor,
        currentIndex: currentIndex, 
        items: [
          BottomNavigationBarItem(
            title: new Text('Gyms'),
            icon: ImageIcon(
                 AssetImage("icons/dumbbell-inactive.png"),
              ),
          ),
          BottomNavigationBarItem(
            title: new Text('News'),
            icon: ImageIcon(
                 AssetImage("icons/newspaper-inactive.png"),
              ),
          ),
          BottomNavigationBarItem(
            title: new Text('Account'),
            icon: ImageIcon(
                 AssetImage("icons/account.png"),
              ),
          ),
        ],
      ),
    ),
    );
  }
}

