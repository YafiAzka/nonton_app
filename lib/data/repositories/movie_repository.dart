import 'package:nonton_app/domain/entities/movie.dart';
import 'package:nonton_app/domain/entities/movie_detail.dart';
import 'package:nonton_app/domain/entities/result.dart';

abstract interface class MovieRepository {
  Future<Result<Movie>> getNowPlaying({int page = 1});
  Future<Result<Movie>> getUpComing({int page = 1});
  Future<Result<MovieDetail>> getDetail({required int id});
  Future<Result<MovieDetail>> getActors({required int id});
}
