import 'package:Intradae/src/components/confirmTicketModal.dart';
import 'package:Intradae/src/components/contestName.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ContestBox extends StatelessWidget {
  ContestBox({
    Key key,
  }) : super(key: key);

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xff001064),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0),
          )
        ],
      ),
      margin: EdgeInsets.all(10),
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
                        color: Color(0xffffb2dd),
                        fontSize: 11,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Icon(
                  Icons.timer,
                  size: 12,
                  color: Color(0xffffb2dd),
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
                                  text: "Live Price : ",
                                  style: GoogleFonts.kronaOne(
                                      color: Colors.white, fontSize: 11),
                                  children: [
                            TextSpan(
                                text: "2889977.99",
                                style: GoogleFonts.kronaOne(
                                    fontSize: 11, color: Colors.tealAccent))
                          ]))),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          child: Text("Entry Fee : 20",
                              style: GoogleFonts.kronaOne(color: Colors.white,fontSize: 11))),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          child: Text("Winnings : 2000",
                              style: GoogleFonts.kronaOne(color: Colors.white,fontSize: 11)))
                    ],
                  ),
                ),

                //Right
                Container(
                    child: Container(
                      decoration: BoxDecoration(color: Color(0xffffb2dd),borderRadius: BorderRadius.circular(12)),
                  margin: EdgeInsets.only(left: 10),
                  height: 30,
                  width: 80,
                  child: MaterialButton(
                    child: Text("JOIN",
                        style: GoogleFonts.kronaOne(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold)),
                    
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                          context: context,
                          builder: (context) => SingleChildScrollView(
                                child: Container(
                                  child: ConfirmTicket(),
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                ),
                              ));
                      textController.clear();
                    },
                  ),
                ))
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
                          style: GoogleFonts.kronaOne(fontSize: 10,color: Colors.white)
                          
                        ),
                      )
                    ],
                  ),

                  Container(
                    child: LinearProgressIndicator(
                      value: 0.4,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xff000051)),
                      backgroundColor: Color(0xffffb2dd),
                    ),
                  ),

                  //Expand Arror
                  Container(
                    margin: EdgeInsets.only(bottom: 4),
                    child: IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.expand_more,
                          color: Colors.white,
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
}
