import 'package:flutter/widgets.dart';

class MyContests extends StatefulWidget {
  MyContests({Key key}) : super(key: key);

  @override
  _MyContestsState createState() => _MyContestsState();
}

class _MyContestsState extends State<MyContests> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Color(0xffffb2dd)),
      child: Center(
        child: Text("My Contest"),
      ),
    );
  }
}
