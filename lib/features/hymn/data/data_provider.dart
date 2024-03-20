import 'package:flutter/services.dart';

class DataService {
  Future<String> fetchFRLyrics() async {
    final String response = await rootBundle.loadString('assets/fr_hymn.json');
    return response;
  }

  Future<String> fetchENLyrics() async {
    final String response = await rootBundle.loadString('assets/en_hymn.json');
    return response;
  }
}
