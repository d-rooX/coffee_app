import 'package:flutter/material.dart';

class CoffeePage extends StatelessWidget {
  CoffeePage(
      {required this.name, required this.desc, required this.price, Key? key})
      : super(key: key);

  String name;
  String desc;
  double price;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
