import 'package:flutter/material.dart';
import 'package:pet_tinder/core/styles/theme_manager.dart';
import 'package:pet_tinder/features/pairsearch/representation/pair_search_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeConfig.darkTheme,
      theme: ThemeConfig.lightTheme,
      themeMode: ThemeMode.dark,
      home: PairSearchScreen(),
    );
  }
}
