import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CaptionOne extends StatelessWidget {
  const CaptionOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Find your way with ease',
      textAlign: TextAlign.left,
      style: GoogleFonts.getFont(
        'Montserrat',
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.white,
        height: 1.3,
      ),
    );
  }
}