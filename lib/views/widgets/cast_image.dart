import 'package:flutter/material.dart';
import 'package:movie/models/movie_details.dart';
import 'package:movie/view_model/movie_notifier.dart';
import 'package:movie/views/widgets/cast_details.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/service/tmdb_service.dart';
import 'package:movie/service/movie_service.dart';
import 'package:provider/provider.dart';


// ignore: must_be_immutable
class CastImage extends StatefulWidget {
  CastImage({Key? key,required this.id}) : super(key: key);

  int id;
  MovieService tmdbService = TmdbService() ;

  @override
  _CastImageState createState() => _CastImageState();
}

class _CastImageState extends State<CastImage> {

  @override
  void initState(){
    super.initState();

    context.read<MovieNotifier>().cast(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    final MovieDetails state=context.watch<MovieDetails>();

    // ignore: sized_box_for_whitespace
          return Container(
            height: 100,
            child: ListView(

                scrollDirection: Axis.horizontal,
                children: state.cast
                    .map((Cast element) => CastDetails(cast: element))
                    .toList()),
    );
  }
}
