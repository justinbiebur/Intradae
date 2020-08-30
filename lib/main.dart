import 'package:Intradae/src/homepage.dart';
import 'package:Intradae/src/model/navigationProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intradar Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<NavigationProvider>(
        create: (context)=> NavigationProvider(),
        child: Homepage(),
      )
    );
  }
}

