import 'package:flutter/material.dart';
import 'package:movie/models/movie_details.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MovieDetails state = context.watch<MovieDetails>();

    return Positioned(
        top: 220,
        left: 8,
        child: Text(
          state.movieDets.title ?? '',
          style: const TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ));
  }
}
