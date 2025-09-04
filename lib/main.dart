import 'package:flutter/material.dart';
import 'package:info_page_app/anlage_page.dart';
import 'package:info_page_app/info_page.dart';
import 'package:info_page_app/saeule_3a_page.dart';
import 'package:info_page_app/ueber_uns_page.dart';
import 'package:info_page_app/vermoegen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Company Services',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InfoPage(),
        '/saeule3a': (context) => const Saeule3aPage(),
        '/vermoegen': (context) => const VermoegenPage(),
        '/anlage': (context) => const AnlagePage(),
        '/ueberuns': (context) => const UeberUnsPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppNavigation extends StatelessWidget implements PreferredSizeWidget {
  const AppNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Unsere Firma"),
      actions: [
        // Parent Tab: Unsere Services
        PopupMenuButton<String>(
          tooltip: "Unsere Services",
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text(
                "Unsere Services",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          onSelected: (value) {
            Navigator.pushNamed(context, value);
          },
          itemBuilder: (context) => [
            const PopupMenuItem(value: '/saeule3a', child: Text("Säule 3a")),
            const PopupMenuItem(
              value: '/vermoegen',
              child: Text("Vermögensverwaltung"),
            ),
            const PopupMenuItem(
              value: '/anlage',
              child: Text("Anlageberatung"),
            ),
          ],
        ),

        // Parent Tab: Über uns
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/ueberuns');
          },
          child: const Text(
            "Über uns",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
