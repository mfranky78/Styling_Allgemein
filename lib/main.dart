import 'package:flutter/material.dart';
import 'package:styling_allgemein2/materialbutton.dart';
import 'package:styling_allgemein2/steck_brief.dart';
import 'package:styling_allgemein2/styling_app.dart';
import 'package:styling_allgemein2/textanimated.dart';
import 'package:styling_allgemein2/theme_page.dart';

void main() {
  runApp(const StylingApp());
}

class StylingApp extends StatefulWidget {
  const StylingApp({super.key});

  @override
  State<StylingApp> createState() => _StylingApp();
}

class _StylingApp extends State<StylingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color.fromARGB(255, 26, 74, 102),
        fontFamily: 'BodoniModa',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 20, fontFamily: 'GreatVibes'),
        ),
      ),
      initialRoute: '/switchapp',
      routes: {
        '/steckbrief': (context) => const SteckBrief(),
        '/switchapp': (context) => const SwitchApp(),
        '/themepage': (context) => const ThemePage(),
        '/textanimated': (context) => const TextAnimated(),
        '/materialstyle': (context) => const MaterialStyle(),
      },
    );
  }
}
