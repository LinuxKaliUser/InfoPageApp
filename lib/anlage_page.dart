import 'package:flutter/material.dart';
import 'package:info_page_app/main.dart';

class AnlagePage extends StatelessWidget {
  const AnlagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppNavigation(),
      body: const Center(
        child: Text(
          "Anlageberatung: "
          "Unsere Experten unterst�tzen Sie dabei, "
          "die besten Investitionsm�glichkeiten f�r Ihre Zukunft zu finden.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}