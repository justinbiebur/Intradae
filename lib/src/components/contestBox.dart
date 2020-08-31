
import 'package:Intradae/src/components/contestName.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ContestBox extends StatelessWidget {

  ContestBox({Key key,}) : super(key: key);

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 165,
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
                        color: Colors.red,
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
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black, fontSize: 11),
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
                          controller: textController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 14),
                          decoration: InputDecoration(
                            hintText: "My Estimate",
                          ),
                        ),
                      )),
                      Container(
                        margin: EdgeInsets.only(left: 10),
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
                            
                            confirmTicket(context, textController.text);
                            textController.clear();
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
          Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Text(
                          "Tickets Remaining - 8",
                          style: GoogleFonts.montserrat(fontSize: 10),
                        ),
                      )
                    ],
                  ),

                  Container(
                    child: LinearProgressIndicator(
                      value: 0.4,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                      backgroundColor: Colors.red[100],
                    ),
                  ),

                  //Expand Arror
                  Container(
                    margin: EdgeInsets.only(bottom: 4),
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.expand_more,
                          color: Colors.black,
                          size: 18,
                        )),
                    height: 20,
                  )
                ],
              ),
              padding: EdgeInsets.only(top: 5, left: 10, right: 10))
        ],
      ),
    );
  }

  void confirmTicket(context, String estimate){
    showModalBottomSheet(context: context, builder: (BuildContext bc){
      return Container(
        height: MediaQuery.of(context).size.height*0.4,
        child: Column(children: <Widget>[
          Text(estimate),
          RaisedButton(child: Text("Confirm"), onPressed: null,)
        ],),
      );
    });
  }
}
