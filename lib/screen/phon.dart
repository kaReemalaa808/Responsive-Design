import 'package:flutter/material.dart';

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1F1F),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xff2A2A2A),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.white54),
                    hintText: "Search destinations...",
                    hintStyle: TextStyle(color: Colors.white54),
                    suffixIcon: Icon(Icons.tune, color: Colors.white54),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Hero Card
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff005B4F),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180,
                      decoration: const BoxDecoration(
                        color: Color(0xff67D8C0),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              "Featured",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),

                          const SizedBox(height: 16),

                          const Text(
                            "TOP DESTINATION",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 11,
                            ),
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            "Santorini, Greece",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 8),

                          const Text(
                            "Cliffside views & iconic sunsets",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Categories Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text("See all", style: TextStyle(color: Color(0xff2FD0AF))),
                ],
              ),

              const SizedBox(height: 16),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    categoryChip("All", true),
                    categoryChip("Beach", false),
                    categoryChip("Mountain", false),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Popular Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text("See all", style: TextStyle(color: Color(0xff2FD0AF))),
                ],
              ),

              const SizedBox(height: 16),

              destinationCard(
                "Kyoto",
                "Japan",
                "4.9",
                "\$820",
                const Color(0xff23B98F),
              ),

              destinationCard(
                "Bali",
                "Indonesia",
                "4.8",
                "\$640",
                const Color(0xff0C7A64),
              ),

              destinationCard(
                "Paris",
                "France",
                "4.7",
                "\$950",
                const Color(0xff4B9DFF),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget categoryChip(String title, bool active) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: active ? const Color(0xff2FD0AF) : const Color(0xff2A2A2A),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(title, style: const TextStyle(color: Colors.white)),
    );
  }

  static Widget destinationCard(
    String title,
    String country,
    String rating,
    String price,
    Color color,
  ) {
    return Container(
      height: 110,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xff2A2A2A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 110,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(20),
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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

                  Text(country, style: const TextStyle(color: Colors.white70)),

                  const Spacer(),

                  Row(
                    children: [
                      Text(
                        "★ $rating",
                        style: const TextStyle(color: Color(0xff2FD0AF)),
                      ),

                      const Spacer(),

                      Text(
                        price,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
