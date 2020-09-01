import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ContestName extends StatelessWidget {
  const ContestName({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: ClipperClass(),
        child: Container(
          decoration: BoxDecoration(color:Color(0xff000051),borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8))),
          
          child: Center(
            child: Text(
              "Interglobe Aviation",
              style: GoogleFonts.kronaOne(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}

class ClipperClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    
    path.quadraticBezierTo(0, size.height, size.width*0.1, size.height);
    path.lineTo(size.width*0.9, size.height);
    
    path.quadraticBezierTo(size.width, size.height, size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
