import 'package:flutter/material.dart';
import '../widget/widget_desktop.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1F1F),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                const Text(
                  "Wandr",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff33D1AF),
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xff2A2A2A),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search destinations, cities, experiences...",
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const CircleAvatar(
                  radius: 28,
                  backgroundColor: Color(0xffD9FFF6),
                  child: Icon(Icons.person_outline, color: Colors.black),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Hero Section
            SizedBox(
              height: 420,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff005B4F),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xff6ADBC1),
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "TOP DESTINATION",
                                    style: TextStyle(color: Colors.white54),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Santorini, Greece",
                                    style: TextStyle(
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: Column(
                      children: const [
                        Expanded(
                          child: DesktopSideCard(
                            title: "Kyoto",
                            location: "Japan",
                            rating: "4.9",
                          ),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: DesktopSideCard(
                            title: "Maldives",
                            location: "Indian Ocean",
                            rating: "5.0",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text("See all", style: TextStyle(color: Color(0xff33D1AF))),
              ],
            ),

            const SizedBox(height: 16),

            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                chip("All", true),
                chip("Beach", false),
                chip("Mountain", false),
                chip("City", false),
                chip("Culture", false),
                chip("Nature", false),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Popular Destinations",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1.15,
              children: const [
                DestinationCard(
                  title: "Bali",
                  country: "Indonesia",
                  price: "\$640",
                  color: Color(0xff24B58E),
                ),
                DestinationCard(
                  title: "Paris",
                  country: "France",
                  price: "\$950",
                  color: Color(0xff4D96FF),
                ),
                DestinationCard(
                  title: "Machu Picchu",
                  country: "Peru",
                  price: "\$1200",
                  color: Color(0xff0A7A63),
                ),
                DestinationCard(
                  title: "Amalfi Coast",
                  country: "Italy",
                  price: "\$780",
                  color: Color(0xff256FCB),
                ),
                DestinationCard(
                  title: "Iceland",
                  country: "Europe",
                  price: "\$1100",
                  color: Color(0xff005C4C),
                ),
                DestinationCard(
                  title: "Maldives",
                  country: "Indian Ocean",
                  price: "\$2400",
                  color: Color(0xffAFEEDF),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
