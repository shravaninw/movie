import 'package:flutter/material.dart';
import 'package:movie/models/movie_details.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class ImagePoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MovieDetails state=context.watch<MovieDetails>();

    return Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: NetworkImage('https://image.tmdb.org/t/p/w500/${state.movieDets.backdropPath}'), fit: BoxFit.cover),
    ));
  }
}
