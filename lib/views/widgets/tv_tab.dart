import 'package:flutter/material.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/service/movie_service.dart';
import 'package:movie/service/tmdb_service.dart';

// ignore: must_be_immutable
class TvTab extends StatelessWidget {
  TvTab({Key? key, required this.cast}) : super(key: key);

  MovieService tmdbService = TmdbService();
  final Cast cast;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          height: 300,
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
          color: Colors.black54,
          child: Column(
              // ignore: always_specify_types
              children: [
                Image.network('${tmdbService.imageUrl}${cast.backdropPath}'),
                Row(
                  // ignore: always_specify_types
                  children: [
                    Text(
                      cast.name!,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      softWrap: true,
                    ),
                    Expanded(child: Container()),
                    Text(
                      '${cast.rating}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.white,
                    )
                  ],
                ),
                Row(
                  // ignore: always_specify_types
                  children: [
                    const Text(
                      'Action,Thriller,Comedy',
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    Text(
                      cast.firstAirDate ?? '',
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    )
                  ],
                )
              ]),
        ));
  }
}
