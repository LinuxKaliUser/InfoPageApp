import 'package:flutter/material.dart';
import 'package:info_page_app/main.dart';

class VermoegenPage extends StatelessWidget {
  const VermoegenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppNavigation(),
      body: const Center(
        child: Text(
          "Verm�gensverwaltung: "
          "Wir bieten Ihnen eine professionelle Verwaltung Ihres Verm�gens, "
          "individuell abgestimmt auf Ihre Anlageziele und Risikoprofile.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}