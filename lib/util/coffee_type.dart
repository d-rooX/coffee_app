import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  CoffeeType(
      {Key? key,
      required this.name,
      required this.isSelected,
      required this.onTap})
      : super(key: key);

  String name;
  bool isSelected;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25.0),
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Text(
              name,
              style: TextStyle(
                fontSize: 20,
                color: isSelected ? Colors.orange : Colors.grey.shade500,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Icon(
            Icons.circle,
            size: 8,
            color: isSelected ? Colors.orange : Colors.transparent,
          )
        ],
      ),
    );
  }
}
