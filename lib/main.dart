import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:movie/models/movie_details.dart';
import 'package:movie/view_model/movie_notifier.dart';
import 'views/movie.dart';

void main() {
  runApp(
    StateNotifierProvider<MovieNotifier,MovieDetails>(
      create: (_) => MovieNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Movie(),
    );
  }
}
