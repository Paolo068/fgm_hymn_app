import 'dart:io';

import 'package:fgm_hymn_app/features/hymn/presentation/screens/en_hymn_list_screen.dart';
import 'package:fgm_hymn_app/features/hymn/presentation/screens/fr_hymn_list_screen.dart';
import 'package:fgm_hymn_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class HymnApp extends StatelessWidget {
  const HymnApp({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = Platform.localeName.split('_')[0];
    return MaterialApp(
      title: 'Hymn App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      home: locale == 'en' ? const EnglishHymnListScreen() : const FrenchHymnListScreen(),
    );
  }
}
