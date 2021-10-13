import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:movie/models/movie_details.dart';

import 'cast.dart';
import 'movie.dart';
import 'movie_dets.dart';

part 'serializers.g.dart';

// ignore: always_specify_types
@SerializersFor([
  Movie,
  MovieDetails,
  MovieDets,
  Cast,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
