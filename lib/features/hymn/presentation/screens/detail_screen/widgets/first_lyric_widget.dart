import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstLyricWidget extends StatelessWidget {
  const FirstLyricWidget({
    super.key,
    required this.enLyrics,
  });

  final List<String> enLyrics;

  @override
  Widget build(BuildContext context) {
    return Text(
      enLyrics.first,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 18, fontFamily: GoogleFonts.ebGaramond().fontFamily),
    );
  }
}

