import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:cofee_app/util/coffee_tile.dart';
import 'package:cofee_app/util/coffee_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int navBarSelectedButton = 0;
  int coffeeTypeSelectedButton = 0;

  List coffeeTypes = [
    "Latte",
    "Cappuccino",
    "Espresso",
    "Flat White",
    "Black",
    "Tea",
    "Glutting"
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      coffeeTypeSelectedButton = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 15, 20),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            navBarSelectedButton = index;
          });
        },
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.orange,
        elevation: 0,
        currentIndex: navBarSelectedButton,
        enableFeedback: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // TopBar
            Padding(
              padding:
                  const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(255, 15, 20, 28),
                          Color.fromARGB(255, 30, 35, 43),
                          Color.fromARGB(255, 39, 50, 64),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(Icons.apps_rounded),
                  ),
                  Container(
                    padding: const EdgeInsets.all(7.0),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(255, 15, 20, 28),
                          Color.fromARGB(255, 30, 35, 43),
                          Color.fromARGB(255, 39, 50, 64),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(Icons.person),
                  ),
                ],
              ),
            ),

            // Title
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                "Find the best coffee for you",
                style: GoogleFonts.indieFlower(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Search
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 25.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 20, 25, 33),
                  hintText: "Find your coffee...",
                  prefixIcon: const Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),

            // Categories
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              height: 45,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeTypes.length,
                itemBuilder: (context, index) {
                  return CoffeeType(
                    name: coffeeTypes[index],
                    isSelected: index == coffeeTypeSelectedButton,
                    onTap: () {
                      coffeeTypeSelected(index);
                    },
                  );
                },
              ),
            ),

            const SizedBox(height: 25),

            // Coffee Tiles
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeTile(
                    image: Image.asset('lib/images/latte.jpg'),
                    name: "Latte",
                    desc: "With oat milk",
                    price: 4.0,
                  ),
                  CoffeeTile(
                    image: Image.asset('lib/images/latte.jpg'),
                    name: "Cappuccino",
                    desc: "With coconut milk",
                    price: 5.6,
                  ),
                  CoffeeTile(
                    image: Image.asset('lib/images/latte.jpg'),
                    name: "Frappe",
                    desc: "Ice coffee!",
                    price: 3.5,
                  ),
                  CoffeeTile(
                    image: Image.asset('lib/images/latte.jpg'),
                    name: "Flat white",
                    desc: "Natural milk",
                    price: 4.0,
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
