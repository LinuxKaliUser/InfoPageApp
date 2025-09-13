import 'package:flutter/material.dart';
import 'package:info_page_app/main.dart';

class UeberUnsPage extends StatelessWidget {
  const UeberUnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppNavigation(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: const [
            Text(
              "Über uns",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Unsere Firma, gegruendet im Jahr 2025 in Therwil, "
              "ist spezialisiert auf Finanzdienstleistungen im Bereich "
              "Vorsorge, Vermoegensverwaltung und Anlageberatung. "
              "Wir begleiten Privatpersonen und Unternehmen dabei, "
              "ihre finanziellen Ziele zu erreichen.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "Unsere Mission ist es, Transparenz, Vertrauen und "
              "langfristige Partnerschaften aufzubauen. "
              "Wir legen grossen Wert auf persoenliche Beratung "
              "und massgeschneiderte Loesungen.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "Unser Team besteht aus erfahrenen Finanzexperte, "
              "die Ihnen jederzeit kompetent zur Seite stehen. "
              "Dank unserer Erfahrung am Schweizer Markt "
              "koennen wir Ihnen nachhaltige und innovative Loesungen anbieten.",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
