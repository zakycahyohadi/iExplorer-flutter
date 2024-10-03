import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CaptionTwo extends StatelessWidget {
  const CaptionTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Every\n Time.',
      textAlign: TextAlign.left,
      style: GoogleFonts.getFont(
        'Montserrat',
        fontSize: 45,
        fontWeight: FontWeight.w800,
        color: Colors.white,
        height: 1.3,
      ),
    );
  }
}