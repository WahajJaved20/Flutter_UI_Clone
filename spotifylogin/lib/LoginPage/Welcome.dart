import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Hello \nThere",
          style: GoogleFonts.varelaRound(
              textStyle: TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.bold,
          )),
        ),
        Padding(
          padding: EdgeInsets.only(top: 80),
          child: Text(
            ".",
            style: GoogleFonts.varelaRound(
                textStyle: TextStyle(
              fontSize: 70,
              fontWeight: FontWeight.bold,
              color: Colors.green[800],
            )),
          ),
        )
      ],
    );
  }
}
