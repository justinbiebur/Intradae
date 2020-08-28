import 'package:Intradae/src/contests.dart';
import 'package:Intradae/src/mycontests.dart';
import 'package:Intradae/src/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int _currentIndex = 1; 
  final List<Widget> _pages = [
    MyContests(),
    ContestPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "INTRADAE",
          style: GoogleFonts.montserrat(
            color: Colors.black,
          ),
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        height: 50,
        color: Colors.blue[900],
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.blue[900],
        items: <Widget>[          
          Icon(Icons.shopping_cart,color: Colors.white),
          Icon(Icons.home,color: Colors.white),
          Icon(Icons.person,color: Colors.white),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
      ),
    );
  }
}