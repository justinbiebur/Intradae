import 'package:Intradae/src/contestBox.dart';
import 'package:flutter/widgets.dart';

class ContestPage extends StatefulWidget {
  ContestPage({Key key}) : super(key: key);

  @override
  _ContestPageState createState() => _ContestPageState();
}

class _ContestPageState extends State<ContestPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ContestBox(),
    );
  }
}
