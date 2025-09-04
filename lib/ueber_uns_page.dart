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
              "Unsere Firma, gegründet im Jahr 2005 in Zürich, "
              "ist spezialisiert auf Finanzdienstleistungen im Bereich "
              "Vorsorge, Vermögensverwaltung und Anlageberatung. "
              "Wir begleiten Privatpersonen und Unternehmen dabei, "
              "ihre finanziellen Ziele zu erreichen.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "Unsere Mission ist es, Transparenz, Vertrauen und "
              "langfristige Partnerschaften aufzubauen. "
              "Wir legen großen Wert auf persönliche Beratung "
              "und maßgeschneiderte Lösungen.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "Unser Team besteht aus erfahrenen Finanzexperten, "
              "die Ihnen jederzeit kompetent zur Seite stehen. "
              "Dank unserer langjährigen Erfahrung am Schweizer Markt "
              "können wir Ihnen nachhaltige und innovative Lösungen anbieten.",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
