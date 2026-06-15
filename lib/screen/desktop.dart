import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Desktop")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(child: box(1, Colors.red)),
            const SizedBox(width: 10),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: box(2, Colors.blue)),
                        const SizedBox(width: 10),
                        Expanded(child: box(3, Colors.green)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(child: box(4, Colors.orange)),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Expanded(child: box(5, Colors.purple)),
                  const SizedBox(height: 10),
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
    return Container(
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
    );
  }
}
