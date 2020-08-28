import 'package:Intradae/src/contestName.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ContestBox extends StatelessWidget {
  const ContestBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), 
          )
        ],
      ),
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //Contest Name
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                child: ContestName(),
                height: 30,
              )),
            ],
          ),
          //Contest Time
          Container(
            padding: EdgeInsets.all(6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "Ends in - 2:30 PM ",
                    style: GoogleFonts.montserrat(
                        color: Colors.redAccent[700],
                        fontSize: 11,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Icon(
                  Icons.timer,
                  size: 12,
                  color: Colors.redAccent[700],
                ),
              ],
            ),
          ),
          //Details
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Left
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          child: RichText(
                              text: TextSpan(
                                  text: "Live Price - ",
                                  style: GoogleFonts.montserrat(color: Colors.black, fontSize: 11),
                                  children: [
                            TextSpan(
                                text: "2889977.99",
                                style: GoogleFonts.montserrat(
                                    fontSize: 11, color: Colors.green))
                          ]))),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          child: Text("Entry Fee : 20",
                              style: GoogleFonts.montserrat(fontSize: 11))),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          child: Text("Winnings : 2000",
                              style: GoogleFonts.montserrat(fontSize: 11)))
                    ],
                  ),
                ),

                //Right
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                          child: SizedBox(
                        height: 30,
                        width: 100,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                            hintText: "My Estimate",
                          ),
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 30,
                        width: 50,
                        child: MaterialButton(
                          child: Text("GO",
                              style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold)),
                          color: Colors.blue[900],
                          onPressed: () {
                            debugPrint("pressed");
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          //LinearBar
          Container(child: LinearProgressIndicator(
            value: 0.4,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            backgroundColor: Colors.red[100],
          ),
          padding: EdgeInsets.all(10))
        ],
      ),
    );
  }
}
