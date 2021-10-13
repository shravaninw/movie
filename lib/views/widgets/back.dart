import 'package:flutter/material.dart';
// ignore: use_key_in_widget_constructors
class Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:24,
      left:4,
      child: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      );
  }

}
