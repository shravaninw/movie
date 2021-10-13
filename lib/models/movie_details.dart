import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/models/movie_dets.dart';

import 'serializers.dart';

part 'movie_details.g.dart';

abstract class MovieDetails
    implements Built<MovieDetails, MovieDetailsBuilder> {
  MovieDetails._();

  // ignore: sort_unnamed_constructors_first
  factory MovieDetails([void Function(MovieDetailsBuilder) updates]) =
      _$MovieDetails;

  String toJson() {
    return json
        .encode(serializers.serializeWith(MovieDetails.serializer, this));
  }

  static MovieDetails? fromJson(dynamic jsonString) {
    return serializers.deserializeWith(MovieDetails.serializer, jsonString);
  }

  @BuiltValueField(wireName: 'results')
  BuiltList<Movie> get movies;
  BuiltList<Cast> get cast;
  @BuiltValueField(wireName: 'cast')
  BuiltList<Cast> get movieCast;
  @BuiltValueField(wireName: 'cast')
  BuiltList<Cast> get tvCast;
  MovieDets get movieDets;
  static Serializer<MovieDetails> get serializer => _$movieDetailsSerializer;
}
