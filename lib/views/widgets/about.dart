import 'package:flutter/material.dart';
import 'package:movie/models/movie_details.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MovieDetails state = context.watch<MovieDetails>();

    return Container(
      //height: 400,
      padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
      // ignore: always_specify_types
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: always_specify_types, prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'About',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Original Title:',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                'Status:',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                'Runtime:',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                'Type:',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                'Premiere:',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                'Budget:',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                'Revenue:',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                'HomePage:',
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                'Imdb:',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: DefaultTextStyle(
            style: DefaultTextStyle.of(context).style.copyWith(
                  color: Colors.white,
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: always_specify_types
              children: [
                const Text(''),
                Text(
                  state.movieDets.originalTitle ?? '',
                ),
                Text(state.movieDets.status ?? ''),
                Text('${state.movieDets.runtime}'),
                Text(state.movieDets.type ?? ''),
                Text(state.movieDets.year ?? ''),
                Text('${state.movieDets.budget}'),
                Text('${state.movieDets.revenue}'),
                Text(state.movieDets.homepage ?? ''),
                Text(state.movieDets.imdb ?? ''),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
