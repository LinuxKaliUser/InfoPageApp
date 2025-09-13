import 'package:flutter/material.dart';

class GebuehrenPage extends StatelessWidget {
  const GebuehrenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gebühren')),
      body: const Center(
        child: Text(
          'Folgende Gebühren fallen an für Referal Kunden mit wiederkehrenden Kosten:\n\n'
          'Vermögensverwaltung: 1.05% p.a.\n'
          'aktiv Säule 3a: 1.1% p.a.\n'
          'Freizügigkeitsdepot: 1.1% p.a.\n'
          'Anlageberatung: 0.2%\n\n'
          'Folgende Gebühren fallen an für Referal Kunden mit einmaligen Kosten:\n\n'
          'Vermögensverwaltung: 0.85% p.a.\n'
          'aktiv Säule 3a: 0.9% p.a.\n'
          'Freizügigkeitsdepot: 0.9% p.a.\n'
          'Anlageberatung: 100 CHF pro Stunde\n'
          'einmalige Vermittlungs- und Beratungskosten: 1% vom Vermögen\n\n'
          'Folgende Gebühren fallen an für externe Kunden mit wiederkehrenden Kosten:\n\n'
          'Vermögensverwaltung: 1.1% p.a.\n'
          'aktiv Säule 3a: 1.1% p.a.\n'
          'Freizügigkeitsdepot: 1.1% p.a.\n'
          'Anlageberatung: 0.3%\n\n'
          'Folgende Gebühren fallen an für externe Kunden mit einmaligen Kosten:\n\n'
          'Vermögensverwaltung: 0.85% p.a.\n'
          'aktiv Säule 3a: 0.9% p.a.\n'
          'Anlageberatung: 150 CHF pro Stunde\n'
          'einmalige Vermittlungs- und Beratungskosten: 3% vom Vermögen\n\n',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
