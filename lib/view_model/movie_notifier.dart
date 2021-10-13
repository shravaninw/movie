import 'package:built_collection/built_collection.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/models/movie_details.dart';
import 'package:movie/models/movie_dets.dart';
import 'package:movie/service/tmdb_service.dart';
import 'package:state_notifier/state_notifier.dart';

class MovieNotifier extends StateNotifier<MovieDetails> {
  MovieNotifier() : super(MovieDetails());

  TmdbService service = TmdbService();
  void init() {
    print('initializing');
  }

  Future<void> popular() async {
    print('popular');
    final BuiltList<Movie> popular = await service.getPopularMovies('1');
    state = state.rebuild(
        (MovieDetailsBuilder b) async => b..movies = popular.toBuilder());
  }

  Future<void> upcoming() async {
    final BuiltList<Movie> upcoming = await service.getUpcomingMovies('1');
    state = state
        .rebuild((MovieDetailsBuilder b) => b..movies = upcoming.toBuilder());
  }

  Future<void> topRated() async {
    print('TopRated');

    final BuiltList<Movie> toprated = await service.getRatedMovies('1');
    state = state.rebuild(
        (MovieDetailsBuilder b) async => b..movies = toprated.toBuilder());
  }

  Future<void> movieDets(int i) async {
    final MovieDets movieDets = await service.getMovieDets(i);

    state = state.rebuild(
        (MovieDetailsBuilder b) => b..movieDets = movieDets.toBuilder());
  }

  Future<void> cast(int i) async {
    final BuiltList<Cast> cast = await service.cast(i);
    state =
        state.rebuild((MovieDetailsBuilder b) => b..cast = cast.toBuilder());
  }

  Future<void> castMovie(int id) async {
    final BuiltList<Cast> n = await service.getCastMovie(id);
    state =
        state.rebuild((MovieDetailsBuilder b) => b..movieCast = n.toBuilder());
  }

  Future<void> castTv(int id) async {
    final BuiltList<Cast> n = await service.getCastTvshow(id);
    state = state.rebuild((MovieDetailsBuilder b) => b..tvCast = n.toBuilder());
  }
}
