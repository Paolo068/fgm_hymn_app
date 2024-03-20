import 'package:flutter/material.dart';
import 'package:social_share/social_share.dart';

import 'widgets/chorus_widget.dart';
import 'widgets/first_lyric_widget.dart';
import 'widgets/lyrics_widget.dart';
import 'widgets/title_widget.dart';

class HymnDetailScreen extends StatelessWidget {
  const HymnDetailScreen(
      {super.key,
      this.lang,
      required this.songTitle,
      required this.id,
      required this.songId,
      required this.chorus,
      required this.songKey,
      required this.author,
      required this.enLyrics});
  final String songTitle;
  final String? lang;
  final String id;
  final int songId;
  final String chorus;
  final String songKey;
  final String author;
  final List<String> enLyrics;

  @override
  Widget build(BuildContext context) {
    final isFrench = lang == 'fr';

    String hymnText = "*$songId.  $songTitle*\n\n\n"
        "${enLyrics.first}\n\n\n"
        "${chorus.isNotEmpty ? lang == "en" ? "*Chorus :*\n" : "*Refrain :*\n" : ''}"
        "${chorus.isNotEmpty ? "$chorus\n\n\n" : ''}"
        "${enLyrics.sublist(1, enLyrics.length - 1).map((lyric) => "${lyric.trim()}\n\n").join(' ').toString()}";

    return Scaffold(
      appBar: AppBar(toolbarHeight: 30),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              TitleWidget(songId: songId, songTitle: songTitle, isFrench: isFrench, author: author, songKey: songKey),
              const SizedBox(height: 30),
              FirstLyricWidget(enLyrics: enLyrics),
              chorus.isNotEmpty ? ChorusWidget(chorus: chorus) : Container(),
              const SizedBox(height: 20),
              LyricsWidget(enLyrics: enLyrics),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => {SocialShare.shareOptions(hymnText)},
        child: const Icon(Icons.share),
      ),
    );
  }
}
