import 'package:fgm_hymn_app/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.songId,
    required this.songTitle,
    required this.isFrench,
    required this.author,
    required this.songKey,
  });

  final int songId;
  final String songTitle;
  final bool isFrench;
  final String author;
  final String songKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$songId.  ${songTitle.capitalize}',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: GoogleFonts.ebGaramond().fontFamily),
        ),
        const SizedBox(height: 5),
        DefaultTextStyle(
          style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontFamily: GoogleFonts.ebGaramond().fontFamily),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${isFrench ? 'Auteur: ' : 'Author: '} $author'),
              const SizedBox(height: 3),
              Text('${isFrench ? 'Clef: ' : 'Key: '} $songKey'),
            ],
          ),
        ),
      ],
    );
  }
}
