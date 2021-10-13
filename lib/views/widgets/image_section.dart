import 'package:flutter/material.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/service/movie_service.dart';
import 'package:movie/views/movie_review.dart';

import '../../service/tmdb_service.dart';

class ImageSection extends StatefulWidget {
  const ImageSection({
    required Key? key,
    required this.movie,
  }) : super(key: key);
  final Movie movie;

  @override
  _ImageSectionState createState() => _ImageSectionState();
}

class _ImageSectionState extends State<ImageSection> {
  MovieService tmdbService = TmdbService();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
              builder: (BuildContext context) => MovieReview(
                    movie: widget.movie,
                  )),
        );
      },
      child: Column(
        // ignore: always_specify_types
        children: [
          Expanded(
              flex: 1,
              child: Image.network(
                  '${tmdbService.imageUrl}${widget.movie.posterPath}')),
          Text(
            widget.movie.title ?? '',
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
