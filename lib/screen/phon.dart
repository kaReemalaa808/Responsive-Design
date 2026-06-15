import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mobile")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            box(1, Colors.red),
            const SizedBox(height: 10),
            box(2, Colors.blue),
            const SizedBox(height: 10),
            box(3, Colors.green),
            const SizedBox(height: 10),
            box(4, Colors.orange),
            const SizedBox(height: 10),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: box(5, Colors.purple)),
                  const SizedBox(width: 10),
                  Expanded(child: box(6, Colors.teal)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget box(int number, Color color) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            "$number",
            style: const TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
