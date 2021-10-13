import 'package:flutter/material.dart';

import 'back.dart';
import 'book_ticket.dart';
import 'category/category_one.dart';
import 'category/category_three.dart';
import 'category/category_two.dart';
import 'image_poster.dart';
import 'rating.dart';
import 'title.dart';
import 'year.dart';
// ignore: use_key_in_widget_constructors
class MoviePoster extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
    height: 300,
      child: Stack(

      // ignore: always_specify_types
      children: [
        ImagePoster(),
        Back(),
        BookTicket(),
        Year(),
        Rating(),
        TitleSection(),
        CategoryOne(),
        CategoryTwo(),
        CategoryThree(),









      ],
    ),);
  }
}
