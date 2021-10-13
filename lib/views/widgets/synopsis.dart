import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Synopsis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      child: const Text(
        'Synopsis',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 34),
      ),
    );
  }
}
