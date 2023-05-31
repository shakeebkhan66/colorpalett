import 'package:colorpalett/palatte.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PaletteState(),
        builder: (context, index) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Color Palette',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: context
                      .watch<PaletteState>()
                      .selectedPalette
                      .primaryColor),
              primaryColor: context.watch<PaletteState>().selectedPalette.primaryColor,
              secondaryHeaderColor: context.watch<PaletteState>().selectedPalette.secondaryColor,
              useMaterial3: true,
            ),
            home: const HomeScreen(),
          );
        });
  }
}
