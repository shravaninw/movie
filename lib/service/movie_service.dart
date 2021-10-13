import 'package:built_collection/built_collection.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/models/movie_dets.dart';

abstract class MovieService {
  final String url = 'https://api.themoviedb.org/3/movie';
  final String urlPerson = 'https://api.themoviedb.org/3/person';

  final String apiKey = '?api_key=89b7237bbcff0fa06e47811bdf0ea123';
  final String language = 'language=en-US';
  final String topRated = 'top_rated';
  final String upComing = 'upcoming';
  final String popular = 'popular';
  final String imageUrl = 'https://image.tmdb.org/t/p/w500/';
  Future<BuiltList<Movie>> getRatedMovies(String page);

  Future<BuiltList<Movie>> getMovies(String requestUrl);
  Future<MovieDets> getMovieDets(int id);

  Future<BuiltList<Movie>> getUpcomingMovies(String page);

  Future<BuiltList<Movie>> getPopularMovies(String page);
  Future<BuiltList<Cast>> getCastMovie(int id);
  Future<BuiltList<Cast>> getCastTvshow(int id);

  Future<BuiltList<Cast>> cast(int id);
}
