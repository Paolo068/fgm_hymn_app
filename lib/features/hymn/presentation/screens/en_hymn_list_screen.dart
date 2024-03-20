import 'package:fgm_hymn_app/features/hymn/presentation/screens/fr_hymn_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/hymn_cubit.dart';
import '../widgets/hym_appbar_widget.dart';
import '../widgets/hymn_body_widget.dart';

class EnglishHymnListScreen extends StatelessWidget {
  const EnglishHymnListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HymnCubit>(context).getEnglishLyrics();
    return const Scaffold(
      appBar: HymnAppbar(
        title: 'Hymns',
        langCode: 'FR',
        navigateTo: FrenchHymnListScreen(),
      ),
      body: HymnBody(),
    );
  }
}
