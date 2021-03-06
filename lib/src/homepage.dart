import 'package:Intradae/src/model/navigationProvider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> _pages = ["Home", "MyContest", "Profile"];

  @override
  Widget build(BuildContext context) {
    final navigation = Provider.of<NavigationProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "INTRADAE",
          style: GoogleFonts.montserrat(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 5),
            child: IconButton(
              icon: Icon(
                Icons.account_balance_wallet,
                size: 30,
                color: Colors.blue[900],
              ),
              onPressed: null,
            ),
          )
        ],
      ),
      body: Consumer<NavigationProvider>(
          builder: (context, navigationProvider, _) =>
              navigationProvider.getNavigation),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 50,
        color: Colors.blue[900],
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.blue[900],
        items: <Widget>[
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.shopping_cart, color: Colors.white),
          Icon(Icons.person, color: Colors.white)
        ],
        onTap: (index) {
          print(index);
          print(_pages[index]);
          navigation.updateNavigation(_pages[index]);
        },
      ),
    );
  }
}
