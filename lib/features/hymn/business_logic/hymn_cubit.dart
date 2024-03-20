import 'package:fgm_hymn_app/features/hymn/data/hymn_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';

import '../data/hymn_model.dart';

class HymnCubit extends HydratedCubit<List<Hymn>> {
  final _hymnRepository = HymnRepository();
  HymnCubit() : super([]);

  getEnglishLyrics() async {
    final lyrics = await _hymnRepository.getENLyrics();
    emit(lyrics);
  }

  getFrenchLyrics() async {
    final lyrics = await _hymnRepository.getFRLyrics();
    emit(lyrics);
  }

  @override
  List<Hymn>? fromJson(Map<String, dynamic> json) {
    Logger().e('message1 ');
    return [
      Hymn(
        songTitle: json['songTitle'] ?? '',
        id: json['id']?.toInt() ?? 0,
        songId: json['songId']?.toInt() ?? 0,
        chorus: json['chorus'] ?? '',
        key: json['key'] ?? '',
        author: json['author'] ?? '',
        enLyrics: List<String>.from(json['enLyrics']),
      )
    ];
  }

  @override
  Map<String, dynamic>? toJson(List<Hymn> state) {
    Logger().e('message2 ');
    Map<String, dynamic> hymn = {};
    for (var element in state.indexed) {
      hymn = {
        'songTitle': element.$2.songTitle,
        'id': element.$2.id,
        'songId': element.$2.songId,
        'chorus': element.$2.chorus,
        'key': element.$2.key,
        'author': element.$2.author,
        'enLyrics': element.$2.enLyrics,
      };
    }
    return hymn;
  }
}
