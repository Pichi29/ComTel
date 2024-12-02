import 'package:flutter/material.dart';
import 'screens/preferences_screen.dart';

void main() {
  runApp(const MyApp()); // Usar 'const' al llamar a MyApp()
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Agrega Key al constructor

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:
          PreferencesScreen(), // Usa 'const' si PreferencesScreen es inmutable
    );
  }
}
