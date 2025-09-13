import 'package:flutter/material.dart';
import 'package:info_page_app/main.dart';

class Saeule3aPage extends StatelessWidget {
  const Saeule3aPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppNavigation(),
      body: const Center(
        child: Text(
          "Informationen ueber Saeule 3a: "
          "Die private Vorsorge in der Schweiz ermoeglicht es, "
          "steuerlich befreites Kapital vor dem Rentenalter fuer die Altersvorsorge aufzubauen.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
