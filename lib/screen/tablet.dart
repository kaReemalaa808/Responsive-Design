import 'package:flutter/material.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1f1f),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xff2A2A2A),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search destinations, cities, experiences...",
                    suffixIcon: Icon(Icons.tune),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Hero Section
              SizedBox(
                height: 250,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff6CD8C2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    const SizedBox(width: 16),

                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: const Color(0xff005B4F),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "TOP DESTINATION",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white60,
                              ),
                            ),

                            const SizedBox(height: 4),

                            const Text(
                              "Santorini,\nGreece",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 4),

                            const Text(
                              "Cliffside villages, whitewashed domes & golden sunsets over the Aegean.",
                            ),

                            const Spacer(),

                            ElevatedButton(
                              onPressed: () {},
                              child: const Text("Explore"),
                            ),

                            const SizedBox(height: 4),

                            const Text("Rating ★ 4.9    From \$1,050"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("See all", style: TextStyle(color: Color(0xff33D1AF))),
                ],
              ),

              const SizedBox(height: 12),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  chip("All", true),
                  chip("Beach", false),
                  chip("Mountain", false),
                  chip("City", false),
                  chip("Culture", false),
                  chip("Nature", false),
                  chip("Adventure", false),
                ],
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular Destinations",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("See all", style: TextStyle(color: Color(0xff33D1AF))),
                ],
              ),

              const SizedBox(height: 20),

              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1.45,
                children: const [
                  DestinationCard(
                    title: "Kyoto",
                    country: "Japan",
                    price: "\$820",
                    color: Color(0xff24B58E),
                  ),

                  DestinationCard(
                    title: "Bali",
                    country: "Indonesia",
                    price: "\$640",
                    color: Color(0xff0A7B65),
                  ),

                  DestinationCard(
                    title: "Paris",
                    country: "France",
                    price: "\$950",
                    color: Color(0xff4C96FF),
                  ),

                  DestinationCard(
                    title: "Iceland",
                    country: "Europe",
                    price: "\$1100",
                    color: Color(0xff006D59),
                  ),

                  DestinationCard(
                    title: "Amalfi Coast",
                    country: "Italy",
                    price: "\$780",
                    color: Color(0xff2670CC),
                  ),

                  DestinationCard(
                    title: "Maldives",
                    country: "Indian Ocean",
                    price: "\$2400",
                    color: Color(0xffA6E8D8),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget chip(String text, bool active) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    decoration: BoxDecoration(
      color: active ? const Color(0xff33D1AF) : const Color(0xff2A2A2A),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(text),
  );
}

class DestinationCard extends StatelessWidget {
  final String title;
  final String country;
  final String price;
  final Color color;

  const DestinationCard({
    super.key,
    required this.title,
    required this.country,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff2A2A2A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(country),

                  const Spacer(),

                  Row(
                    children: [
                      const Text(
                        "★ 4.9",
                        style: TextStyle(color: Color(0xff33D1AF)),
                      ),
                      const Spacer(),
                      Text(price),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
