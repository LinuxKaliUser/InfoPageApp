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
              "�ber uns",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Unsere Firma, gegr�ndet im Jahr 2005 in Z�rich, "
              "ist spezialisiert auf Finanzdienstleistungen im Bereich "
              "Vorsorge, Verm�gensverwaltung und Anlageberatung. "
              "Wir begleiten Privatpersonen und Unternehmen dabei, "
              "ihre finanziellen Ziele zu erreichen.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "Unsere Mission ist es, Transparenz, Vertrauen und "
              "langfristige Partnerschaften aufzubauen. "
              "Wir legen gro�en Wert auf pers�nliche Beratung "
              "und ma�geschneiderte L�sungen.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              "Unser Team besteht aus erfahrenen Finanzexperten, "
              "die Ihnen jederzeit kompetent zur Seite stehen. "
              "Dank unserer langj�hrigen Erfahrung am Schweizer Markt "
              "k�nnen wir Ihnen nachhaltige und innovative L�sungen anbieten.",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
