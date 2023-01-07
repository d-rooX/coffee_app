import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final Image image;
  final String name;
  final String desc;
  final double price;

  const CoffeeTile(
      {Key? key,
      required this.image,
      required this.name,
      required this.desc,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 20.0),
      child: Container(
        width: 185,
        height: 100,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 15, 20, 28),
              Color.fromARGB(255, 30, 35, 43),
              Color.fromARGB(255, 39, 50, 64),
            ],
          ),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(23.0),
              child: image,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontSize: 22)),
                  Text(desc, style: TextStyle(color: Colors.grey[500])),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "\$",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            " ${price.toString()}",
                            style: const TextStyle(fontSize: 22),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          print(price.toString());
                        },
                        child: Container(
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          alignment: Alignment.centerRight,
                          child: const Icon(
                            Icons.add,
                            size: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
