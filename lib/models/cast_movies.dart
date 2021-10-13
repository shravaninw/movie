import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'cast_movies.g.dart';

abstract class CastMovie implements Built<CastMovie, CastMovieBuilder> {
  factory CastMovie([Function(CastMovieBuilder b) updates]) = _$CastMovie;
  CastMovie._();
  String toJson() {
    return json.encode(serializers.serializeWith(CastMovie.serializer, this));
  }

  static CastMovie? fromJson(dynamic jsonString) {
    return serializers.deserializeWith(CastMovie.serializer, json.decode);
  }

  @BuiltValueField(wireName: 'id')
  int? get id;
  String? get name;
  @BuiltValueField(wireName: 'backdrp_path')
  String? get backdropPath;
  @BuiltValueField(wireName: 'poster_path')
  String? get posterPath;
  @BuiltValueField(wireName: 'vote_average')
  double? get rating;
  @BuiltValueField(wireName: 'release_date')
  String? get year;
  @BuiltValueField(wireName: 'original_title')
  String? get title;

  static Serializer<CastMovie> get serializer => _$castMovieSerializer;
}
