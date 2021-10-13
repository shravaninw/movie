import 'package:flutter/material.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/view_model/movie_notifier.dart';
import 'package:movie/views/widgets/cast.dart';
import 'package:movie/views/widgets/cast_image.dart';
import 'package:movie/views/widgets/description.dart';
import 'package:provider/provider.dart';

import 'widgets/about.dart';
import 'widgets/movie_poster.dart';
import 'widgets/synopsis.dart';

class MovieReview extends StatelessWidget {
  const MovieReview({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    if (movie.id == null) {
      return const Scaffold(body: Text('Has No Data'));
    }
    print(movie.id);

    context.read<MovieNotifier>().movieDets(movie.id!);
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        scrollDirection: Axis.vertical,
        // ignore: always_specify_types
        children: [
          MoviePoster(),
          Synopsis(),
          Description(),
          Cast(),
          CastImage(
            id: movie.id ?? 0,
          ),
          AboutSection(),
        ],
      ),
    );
  }
}
