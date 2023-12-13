import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Align labelText() {
  return Align(
    alignment: Alignment.centerRight,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          height: 30,
          width: 150,
          color: Colors.red,
          child: Center(
            child: Text(
              'Share Your Feelings',
              style: GoogleFonts.dancingScript(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(0, 0);

    path.lineTo(0, size.height);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
