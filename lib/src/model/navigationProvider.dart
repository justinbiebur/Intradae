import 'package:Intradae/src/pages/contests.dart';
import 'package:Intradae/src/pages/mycontests.dart';
import 'package:Intradae/src/pages/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  String currentNavigation = "Home";

  Widget get getNavigation {
    if(currentNavigation == "Profile") {
      return ProfilePage();
    } else if (currentNavigation == "MyContest") {
      return MyContests();
    } else {
      return ContestPage();
    }
  }

  void updateNavigation(String navigation) {
    currentNavigation = navigation;
    notifyListeners();
  }
}