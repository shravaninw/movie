import 'package:flutter/material.dart';
import 'package:movie/models/movie_details.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class Rating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MovieDetails state = context.watch<MovieDetails>();

    return Positioned(
      top: 170,
      left: 80,
      child: Container(
        width: 32,
        height: 32,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          color: Colors.orange,
        ),
        child: Center(
          child: Text(
            '${state.movieDets.voteAverage}',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
