import 'package:flutter/material.dart';
// ignore: use_key_in_widget_constructors
class CategoryOne extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {

    return Positioned(
      top: 260,
      left:8,
      child:Container(
        width: 56,
        height: 24,
        decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
        Radius.circular(50),
    ),
    color: Colors.grey,
    ),
    child:const Center(
    child: Text(
   'Action',
    style: TextStyle(color: Colors.white, ),
    textAlign: TextAlign.center,),
      ),),

    );
  }
}
