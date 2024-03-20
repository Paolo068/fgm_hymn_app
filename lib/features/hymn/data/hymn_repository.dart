import 'dart:convert';

import 'package:fgm_hymn_app/features/hymn/data/data_provider.dart';
import 'package:fgm_hymn_app/features/hymn/data/hymn_model.dart';

class HymnRepository {
  final _dataService = DataService();

  Future<List<Hymn>> getFRLyrics() async {
    final response = await _dataService.fetchFRLyrics();
    final json = jsonDecode(response);
    List data = json['hymns'];
    final hymns = data.map((hymn) => Hymn.fromMap(hymn)).toList();
    return hymns;
  }
  Future<List<Hymn>> getENLyrics() async {
    final response = await _dataService.fetchENLyrics();
    final json = jsonDecode(response);
    List data = json['hymns'];
    final hymns = data.map((hymn) => Hymn.fromMap(hymn)).toList();
    return hymns;
  }
}
