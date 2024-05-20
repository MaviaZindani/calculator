import 'package:flutter/material.dart';
import 'package:simple_calculator/utlis/colors.dart';

class button extends StatelessWidget {
  String titel;
  var color = dimblackcolor;
  final VoidCallback onPress;
  button({super.key, required this.titel, required this.color,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onPress,
      child: Container(
        height: 68,
        width: 68,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(
          titel,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        )),
      ),
    );
  }
}


class button2 extends StatelessWidget {
  String titel;
  var color = dimblackcolor;
  final VoidCallback onPress;
  button2({super.key, required this.titel, required this.color,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onPress,
      child: Container(
        height: 68,
        width: 170,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(
          titel,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        )),
      ),
    );;
  }
}