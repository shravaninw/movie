import 'package:flutter/material.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/models/movie_details.dart';
import 'package:movie/service/movie_service.dart';
import 'package:movie/service/tmdb_service.dart';
import 'package:movie/view_model/movie_notifier.dart';
import 'package:movie/views/widgets/movie_tab.dart';
import 'package:movie/views/widgets/tv_tab.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CastMovie extends StatefulWidget {
  CastMovie({Key? key, required this.cast, required this.tab})
      : super(key: key);
  final String tab;
  MovieService tmdbService = TmdbService();

  final Cast cast;
  @override
  _CastMovieState createState() => _CastMovieState();
}

class _CastMovieState extends State<CastMovie> {
  @override
  void initState() {
    super.initState();
    if (widget.tab == 'Movie') {
      context.read<MovieNotifier>().castMovie(widget.cast.creditId!);
    } else if (widget.tab == 'Tv') {
      context.read<MovieNotifier>().castTv(widget.cast.creditId!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final MovieDetails state = context.watch<MovieDetails>();

    if (widget.tab == 'Movie') {
      return ListView(
        children:
            state.cast.map((Cast element) => MovieTab(cast: element)).toList(),
      );
    } else if (widget.tab == 'Tv') {
      return ListView(
          children: state.tvCast
              .map((Cast element) => TvTab(cast: element))
              .toList());
    }
    return const Text('Has no Data');
  }
}
