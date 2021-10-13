import 'package:flutter/material.dart';
import 'package:movie/models/movie_details.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class Year extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final MovieDetails state=context.watch<MovieDetails>();

//    ??  //for a ?? b  if lhs is null return rhs, a = b ?? c;
//    ??= // for any nullable type, assigns rhs to lhs if lhs is null = int? a; a ??= DateTime.now().milliseconds;
//    ?. // A? a; if type is nullable, allows to access property only if object is not null. a?.toString() ,id =  post?.user?.uid
//        ! // this helps to notify compiler to treat a nullable type as non-nullable = Object? a; Object b;
//
    return Positioned(
      top:170,
        left: 8,
        child: Container(
      width: 48,
      height: 32,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Colors.orange,
      ),


      child:Center(
      child:Text(
        state.movieDets.year ?? '',textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
      ),
      ),

    ),);
  }
}
