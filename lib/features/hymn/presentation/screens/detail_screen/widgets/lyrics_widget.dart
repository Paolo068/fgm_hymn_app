import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LyricsWidget extends StatelessWidget {
  const LyricsWidget({
    super.key,
    required this.enLyrics,
  });

  final List<String> enLyrics;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: enLyrics
          .sublist(1, enLyrics.length - 1)
          .map((lyric) => Center(
                child: Text(
                  '$lyric\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: GoogleFonts.ebGaramond().fontFamily,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
