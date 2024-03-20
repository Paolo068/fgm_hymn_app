import 'dart:convert';

import 'package:flutter/foundation.dart';

class Hymn {
  final String songTitle;
  final dynamic id;
  final int songId;
  final String chorus;
  final String key;
  final String author;
  final List<String> enLyrics;
  Hymn({
    required this.songTitle,
    required this.id,
    required this.songId,
    required this.chorus,
    required this.key,
    required this.author,
    required this.enLyrics,
  });

  Hymn copyWith({
    String? songTitle,
    dynamic id,
    int? songId,
    String? chorus,
    String? key,
    String? author,
    List<String>? enLyrics,
  }) {
    return Hymn(
      songTitle: songTitle ?? this.songTitle,
      id: id ?? this.id,
      songId: songId ?? this.songId,
      chorus: chorus ?? this.chorus,
      key: key ?? this.key,
      author: author ?? this.author,
      enLyrics: enLyrics ?? this.enLyrics,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'songTitle': songTitle,
      'id': id,
      'songId': songId,
      'chorus': chorus,
      'key': key,
      'author': author,
      'enLyrics': enLyrics,
    };
  }

  factory Hymn.fromMap(Map<String, dynamic> map) {
    return Hymn(
      songTitle: map['songTitle'] ?? '',
      id: map['id'],
      songId: map['songId']?.toInt() ?? 0,
      chorus: map['chorus'] ?? '',
      key: map['key'] ?? '',
      author: map['author'] ?? '',
      enLyrics: List<String>.from(map['enLyrics']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Hymn.fromJson(String source) => Hymn.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Hymn(songTitle: $songTitle, id: $id, songId: $songId, chorus: $chorus, key: $key, author: $author, enLyrics: $enLyrics)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Hymn &&
        other.songTitle == songTitle &&
        other.id == id &&
        other.songId == songId &&
        other.chorus == chorus &&
        other.key == key &&
        other.author == author &&
        listEquals(other.enLyrics, enLyrics);
  }

  @override
  int get hashCode {
    return songTitle.hashCode ^
        id.hashCode ^
        songId.hashCode ^
        chorus.hashCode ^
        key.hashCode ^
        author.hashCode ^
        enLyrics.hashCode;
  }
}
