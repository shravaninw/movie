import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'cast_tvshows.g.dart';

abstract class CastTvshows implements Built<CastTvshows, CastTvshowsBuilder> {
  factory CastTvshows([Function(CastTvshowsBuilder b) updates]) = _$CastTvshows;
  CastTvshows._();
  String toJson() {
    return json.encode(serializers.serializeWith(CastTvshows.serializer, this));
  }

  static CastTvshows? fromJson(dynamic jsonString) {
    return serializers.deserializeWith(CastTvshows.serializer, json.decode);
  }

  @BuiltValueField(wireName: 'id')
  int? get creditId;
  String? get name;
  @BuiltValueField(wireName: 'profile_path')
  String? get profilePath;
  @BuiltValueField(wireName: 'id')
  int? get id;
  @BuiltValueField(wireName: 'backdrop_path')
  String? get backdropPath;
  @BuiltValueField(wireName: 'poster_path')
  String? get posterPath;
  @BuiltValueField(wireName: 'vote_average')
  double? get rating;
  @BuiltValueField(wireName: 'release_date')
  String? get year;
  @BuiltValueField(wireName: 'original_title')
  String? get title;
  @BuiltValueField(wireName: 'first_air_date')
  String? get firstAirDate;

  static Serializer<CastTvshows> get serializer => _$castTvshowsSerializer;
}
