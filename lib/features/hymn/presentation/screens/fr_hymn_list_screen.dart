import 'package:fgm_hymn_app/features/hymn/presentation/widgets/hym_appbar_widget.dart';
import 'package:fgm_hymn_app/features/hymn/presentation/widgets/hymn_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/hymn_cubit.dart';
import 'en_hymn_list_screen.dart';

class FrenchHymnListScreen extends StatelessWidget {
  const FrenchHymnListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HymnCubit>(context).getFrenchLyrics();
    return const Scaffold(
      appBar: HymnAppbar(title: 'Cantique', langCode: 'EN', navigateTo: EnglishHymnListScreen()),
      body: HymnBody(),
    );
  }
}
