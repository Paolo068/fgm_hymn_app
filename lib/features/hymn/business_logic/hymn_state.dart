import '../data/hymn_model.dart';

sealed class HymnState {}

final class HymnInitial extends HymnState {}

final class HymnLoading extends HymnState {}

final class HymnLoaded extends HymnState {
  final List<Hymn> lyrics;
  HymnLoaded(this.lyrics);
}
