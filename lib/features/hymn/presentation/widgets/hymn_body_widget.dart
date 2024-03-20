import 'package:fgm_hymn_app/features/hymn/business_logic/hymn_cubit.dart';
import 'package:fgm_hymn_app/features/hymn/data/hymn_model.dart';
import 'package:fgm_hymn_app/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/detail_screen/hymn_detail_screen.dart';

class HymnBody extends StatefulWidget {
  const HymnBody({
    super.key,
  });

  @override
  State<HymnBody> createState() => _HymnBodyState();
}

class _HymnBodyState extends State<HymnBody> {
  List<Hymn> foundHymns = [];
  // List<Hymn> hymns = [];
  final searchFieldCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<HymnCubit, List<Hymn>>(builder: (context, hymns) {
        return Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20),
          child: Column(
            children: [
              /// Search Field
              TextField(
                onChanged: (value) {
                  setState(() {
                    foundHymns = hymns
                        .where((element) =>
                            element.songTitle.toLowerCase().contains(value.toLowerCase()) ||
                            element.enLyrics.any(
                              (element) => element.toLowerCase().contains(value.toLowerCase()),
                            ))
                        .toList();
                  });
                },
                controller: searchFieldCtrl,
                decoration: const InputDecoration(hintText: 'Search hymn here...', prefixIcon: Icon(Icons.search)),
              ),
              const SizedBox(height: 20),

              /// Hymn List
              Expanded(
                child: ListView.separated(
                  itemCount: foundHymns.isEmpty ? hymns.length : foundHymns.length,
                  itemBuilder: (BuildContext context, int index) {
                    final hymn = foundHymns.isEmpty ? hymns[index] : foundHymns[index];
                    return ListTile(
                      horizontalTitleGap: 5,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                      dense: true,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HymnDetailScreen(
                              songTitle: hymn.songTitle,
                              id: hymn.id.toString(),
                              songId: hymn.songId,
                              chorus: hymn.chorus,
                              songKey: hymn.key,
                              author: hymn.author,
                              enLyrics: hymn.enLyrics,
                              lang: 'en',
                            ),
                          ),
                        );
                        searchFieldCtrl.clear();
                      },
                      leading: Text(
                        '${hymn.songId}.',
                        style: const TextStyle(fontSize: 14),
                      ),
                      title: Text(
                        hymn.songTitle.capitalize,
                        softWrap: true,
                        style: const TextStyle(fontSize: 16),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
