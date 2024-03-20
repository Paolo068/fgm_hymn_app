import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HymnAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String langCode;
  final Widget navigateTo;
  const HymnAppbar({
    super.key,
    required this.title,
    required this.langCode,
    required this.navigateTo,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(title, style: TextStyle(fontFamily: GoogleFonts.lora().fontFamily)),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context, MaterialPageRoute(builder: (context) => navigateTo), (route) => false);
            },
            child: Text(
              langCode,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
