// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail.freezed.dart';
part 'movie_detail.g.dart';

@freezed
class MovieDetail with _$MovieDetail {
  factory MovieDetail({
    required int id,
    required String title,
    @JsonKey(name: 'poster_path') String? posterPath,
    required String overview,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    required int runtime,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
  }) = _MovieDetail;

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);
}
