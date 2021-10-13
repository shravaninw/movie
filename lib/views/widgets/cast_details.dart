import 'package:flutter/material.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/service/tmdb_service.dart';

import '../other_movies.dart';

// ignore: must_be_immutable
class CastDetails extends StatelessWidget {
//  const CastDetails({Key? key, required this.casturl, required this.name})
//      : super(key: key);
//  final String casturl;
//  final String name;
  CastDetails({Key? key, required this.cast}) : super(key: key);
  final Cast cast;

  TmdbService tmdbService = TmdbService();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute<void>(
                builder: (BuildContext context) => OtherMovies(cast: cast)));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    NetworkImage('${tmdbService.imageUrl}${cast.profilePath}'),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.bottomLeft,
            child: Text(
              cast.name ?? '',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
