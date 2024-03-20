import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChorusWidget extends StatelessWidget {
  const ChorusWidget({
    super.key,
    required this.chorus,
  });

  final String chorus;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Center(
          child: Column(
            children: [
              // Text(
              //   isFrench ? 'Refrain:' : 'Chorus:',
              //   style: const TextStyle(fontWeight: FontWeight.bold),
              // ),
              Text(chorus,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.ebGaramond().fontFamily)),
            ],
          ),
        ),
      );
  }
}
