import 'package:flutter/material.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/models/movie_details.dart';
import 'package:movie/view_model/movie_notifier.dart';
import 'package:provider/provider.dart';

import 'image_section.dart';

class MovieGrid extends StatefulWidget {
  const MovieGrid({Key? key, required this.tab}) : super(key: key);

  final String tab;

  @override
  _MovieGridState createState() => _MovieGridState();
}

class _MovieGridState extends State<MovieGrid> {
  @override
  void initState() {
    super.initState();
    if (widget.tab == 'Popular') {
      context.read<MovieNotifier>().popular();
    } else if (widget.tab == 'TopRated') {
      context.read<MovieNotifier>().topRated();
    } else {
      context.read<MovieNotifier>().upcoming();
    }
  }

  @override
  Widget build(BuildContext context) {
    final MovieDetails state = context.watch<MovieDetails>();

    if (widget.tab == 'Popular') {
      print('popular');
      // ignore: unnecessary_null_comparison
      if (state.movies != null) {
        int i = 0;
        GlobalKey key = GlobalKey();
        return GridView.count(
            key: ValueKey('Pop_Grid'),
            // childAskepectRatio: 100,
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: state.movies
                .map((Movie element) => ImageSection(
                      movie: element,
                      key: ValueKey('Pop_${++i}'),
                    ))
                .toList());
      } else
        return const Text('No Data');
    }
    if (widget.tab == 'TopRated') {
      print('TopRated');

      // ignore: unnecessary_null_comparison
      if (state.movies != null) {
        int i = 0;

        return GridView.count(

            // childAspectRatio: 100,
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: state.movies
                .map((Movie element) => ImageSection(
                      key: ValueKey('Top_${++i}'),
                      movie: element,
                    ))
                .toList());
      } else
        return const Text('No Data');
    }

    if (widget.tab == 'Upcoming') {
      int i = 0;

      // ignore: unnecessary_null_comparison
      if (state.movies != null) {
        return GridView.count(
            // childAspectRatio: 100,
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: state.movies.map((Movie element) {
              return ImageSection(
                key: ValueKey('Up_${++i}'),
                movie: element,
              );
            }).toList());
      } else
        return const Text('No Data');
    } else
      return const Text('');
  }
}
