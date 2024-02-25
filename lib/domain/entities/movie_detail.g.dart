// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieDetailImpl _$$MovieDetailImplFromJson(Map<String, dynamic> json) =>
    _$MovieDetailImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      posterPath: json['poster_path'] as String?,
      overview: json['overview'] as String,
      backdropPath: json['backdrop_path'] as String?,
      runtime: json['runtime'] as int,
      voteAverage: (json['vote_average'] as num).toDouble(),
      genreIds:
          (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$MovieDetailImplToJson(_$MovieDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_path': instance.posterPath,
      'overview': instance.overview,
      'backdrop_path': instance.backdropPath,
      'runtime': instance.runtime,
      'vote_average': instance.voteAverage,
      'genre_ids': instance.genreIds,
    };
