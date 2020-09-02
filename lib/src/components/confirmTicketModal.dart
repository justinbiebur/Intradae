import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmTicket extends StatelessWidget {
  const ConfirmTicket({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
            color: Color(0xFF737373),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: 3,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          "Interglobe Aviation",
                          style: GoogleFonts.montserrat(
                              color: Colors.blue[900],
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Live Price :  ",
                              style: GoogleFonts.rubik(fontSize: 14)),
                          Row(
                            children: <Widget>[
                              Text("234567",
                                  style: GoogleFonts.rubik(
                                      color: Colors.green, fontSize: 14)),
                              Icon(
                                Icons.trending_up,
                                color: Colors.green,
                                size: 10,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Wallet Balance ",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text(
                                    "Rs 134567",
                                    style: GoogleFonts.rubik(fontSize: 15),
                                  ),
                                ],
                              )),
                          Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Ticket Price",
                                style: GoogleFonts.rubik(
                                    fontSize: 15, fontWeight: FontWeight.w800),
                              ),
                              Text(
                                "Rs 2000",
                                style: GoogleFonts.rubik(fontSize: 15),
                              )
                            ],
                          )),
                          Container(
                              height: 40,
                              margin:
                                  EdgeInsets.only(top: 40, left: 10, right: 10),
                              child: TextField(
                                textAlign: TextAlign.left,
                                textAlignVertical: TextAlignVertical.bottom,
                                keyboardType: TextInputType.numberWithOptions(),
                                decoration: InputDecoration(
                                    hintText: "My Estimate",
                                    hintStyle: GoogleFonts.rubik(),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue, width: 2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blue, width: 2),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)))),
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: FlatButton(
                                    color: Colors.blue,
                                    onPressed: () {
                                      print("pressed");
                                    },
                                    child: Text(
                                      "Buy",
                                      style: GoogleFonts.rubik(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}