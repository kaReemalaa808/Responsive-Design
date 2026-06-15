import 'package:flutter/material.dart';
import 'screen/phon.dart';
import 'screen/tablet.dart';
import 'screen/desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Demo',
      home: const ResponsiveScreen(),
    );
  }
}

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileScreen();
        } else if (constraints.maxWidth < 1024) {
          return const TabletScreen();
        } else {
          return const DesktopScreen();
        }
      },
    );
  }
}
