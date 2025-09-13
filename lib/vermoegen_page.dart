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
          "Vermoegensverwaltung: "
          "Wir bieten Ihnen eine professionelle Verwaltung Ihres Vermoegens, "
          "individuell abgestimmt auf Ihre Anlageziele und Risikoprofil.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
