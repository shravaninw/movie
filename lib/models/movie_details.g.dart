// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieDetails> _$movieDetailsSerializer =
    new _$MovieDetailsSerializer();

class _$MovieDetailsSerializer implements StructuredSerializer<MovieDetails> {
  @override
  final Iterable<Type> types = const [MovieDetails, _$MovieDetails];
  @override
  final String wireName = 'MovieDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, MovieDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'results',
      serializers.serialize(object.movies,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Movie)])),
      'cast',
      serializers.serialize(object.cast,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Cast)])),
      'cast',
      serializers.serialize(object.movieCast,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Cast)])),
      'cast',
      serializers.serialize(object.tvCast,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Cast)])),
      'movieDets',
      serializers.serialize(object.movieDets,
          specifiedType: const FullType(MovieDets)),
    ];

    return result;
  }

  @override
  MovieDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'results':
          result.movies.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Movie)]))!
              as BuiltList<Object?>);
          break;
        case 'cast':
          result.cast.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Cast)]))!
              as BuiltList<Object?>);
          break;
        case 'cast':
          result.movieCast.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Cast)]))!
              as BuiltList<Object?>);
          break;
        case 'cast':
          result.tvCast.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Cast)]))!
              as BuiltList<Object?>);
          break;
        case 'movieDets':
          result.movieDets.replace(serializers.deserialize(value,
              specifiedType: const FullType(MovieDets))! as MovieDets);
          break;
      }
    }

    return result.build();
  }
}

class _$MovieDetails extends MovieDetails {
  @override
  final BuiltList<Movie> movies;
  @override
  final BuiltList<Cast> cast;
  @override
  final BuiltList<Cast> movieCast;
  @override
  final BuiltList<Cast> tvCast;
  @override
  final MovieDets movieDets;

  factory _$MovieDetails([void Function(MovieDetailsBuilder)? updates]) =>
      (new MovieDetailsBuilder()..update(updates)).build();

  _$MovieDetails._(
      {required this.movies,
      required this.cast,
      required this.movieCast,
      required this.tvCast,
      required this.movieDets})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(movies, 'MovieDetails', 'movies');
    BuiltValueNullFieldError.checkNotNull(cast, 'MovieDetails', 'cast');
    BuiltValueNullFieldError.checkNotNull(
        movieCast, 'MovieDetails', 'movieCast');
    BuiltValueNullFieldError.checkNotNull(tvCast, 'MovieDetails', 'tvCast');
    BuiltValueNullFieldError.checkNotNull(
        movieDets, 'MovieDetails', 'movieDets');
  }

  @override
  MovieDetails rebuild(void Function(MovieDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieDetailsBuilder toBuilder() => new MovieDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieDetails &&
        movies == other.movies &&
        cast == other.cast &&
        movieCast == other.movieCast &&
        tvCast == other.tvCast &&
        movieDets == other.movieDets;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, movies.hashCode), cast.hashCode),
                movieCast.hashCode),
            tvCast.hashCode),
        movieDets.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieDetails')
          ..add('movies', movies)
          ..add('cast', cast)
          ..add('movieCast', movieCast)
          ..add('tvCast', tvCast)
          ..add('movieDets', movieDets))
        .toString();
  }
}

class MovieDetailsBuilder
    implements Builder<MovieDetails, MovieDetailsBuilder> {
  _$MovieDetails? _$v;

  ListBuilder<Movie>? _movies;
  ListBuilder<Movie> get movies => _$this._movies ??= new ListBuilder<Movie>();
  set movies(ListBuilder<Movie>? movies) => _$this._movies = movies;

  ListBuilder<Cast>? _cast;
  ListBuilder<Cast> get cast => _$this._cast ??= new ListBuilder<Cast>();
  set cast(ListBuilder<Cast>? cast) => _$this._cast = cast;

  ListBuilder<Cast>? _movieCast;
  ListBuilder<Cast> get movieCast =>
      _$this._movieCast ??= new ListBuilder<Cast>();
  set movieCast(ListBuilder<Cast>? movieCast) => _$this._movieCast = movieCast;

  ListBuilder<Cast>? _tvCast;
  ListBuilder<Cast> get tvCast => _$this._tvCast ??= new ListBuilder<Cast>();
  set tvCast(ListBuilder<Cast>? tvCast) => _$this._tvCast = tvCast;

  MovieDetsBuilder? _movieDets;
  MovieDetsBuilder get movieDets =>
      _$this._movieDets ??= new MovieDetsBuilder();
  set movieDets(MovieDetsBuilder? movieDets) => _$this._movieDets = movieDets;

  MovieDetailsBuilder();

  MovieDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _movies = $v.movies.toBuilder();
      _cast = $v.cast.toBuilder();
      _movieCast = $v.movieCast.toBuilder();
      _tvCast = $v.tvCast.toBuilder();
      _movieDets = $v.movieDets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieDetails;
  }

  @override
  void update(void Function(MovieDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieDetails build() {
    _$MovieDetails _$result;
    try {
      _$result = _$v ??
          new _$MovieDetails._(
              movies: movies.build(),
              cast: cast.build(),
              movieCast: movieCast.build(),
              tvCast: tvCast.build(),
              movieDets: movieDets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
        _$failedField = 'cast';
        cast.build();
        _$failedField = 'movieCast';
        movieCast.build();
        _$failedField = 'tvCast';
        tvCast.build();
        _$failedField = 'movieDets';
        movieDets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MovieDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
