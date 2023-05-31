import 'package:flutter/material.dart';

class Palette {
  Color primaryColor;
  Color secondaryColor;
  int index;

  Palette(
      {required this.primaryColor,
        required this.secondaryColor,
        required this.index});
}

class PaletteState extends ChangeNotifier {
  Palette selectedPalette = Palette(
      primaryColor: const Color(0xFFFF5436),
      secondaryColor: const Color(0xFFFF8975),
      index: 0);

  Palette? hoveredPalette;

  List<Palette> availablePalette = [
    Palette(
        primaryColor: const Color(0xFFFF5436),
        secondaryColor: const Color(0xFFFF8975),
        index: 0),
    Palette(
        primaryColor: const Color(0xFF50E3C2),
        secondaryColor: const Color(0xFF59EBCB),
        index: 1),
    Palette(
        primaryColor: const Color(0xFF2C3F50),
        secondaryColor: const Color(0xFF34495E),
        index: 2),
    Palette(
        primaryColor: const Color(0xFF00ABCF),
        secondaryColor: const Color(0xFF07B7DC),
        index: 3),
    Palette(
        primaryColor: const Color(0xFF89253e),
        secondaryColor: const Color(0xFF3a6186),
        index: 4),
    Palette(
        primaryColor: const Color(0xFF4ecdc4),
        secondaryColor: const Color(0xFF556270),
        index: 5),
    Palette(
        primaryColor: const Color(0xFF8e9eab),
        secondaryColor: const Color(0xFFeef2f3),
        index: 6),
    Palette(
        primaryColor: const Color(0xFF7DA4E3),
        secondaryColor: const Color(0xFF98BBF5),
        index: 7),
    Palette(
        primaryColor: const Color(0xFFbe93c5),
        secondaryColor: const Color(0xFF7bc6cc),
        index: 7),
    Palette(
        primaryColor: const Color(0xFFb0A3B47),
        secondaryColor: const Color(0xFF1A5C6C),
        index: 7),
  ];

  void changeSelectedPalette(Palette palette) {
    selectedPalette = palette;
    notifyListeners();
  }

  void changeHoveredPalette(Palette? palette) {
    hoveredPalette = palette;
    notifyListeners();
  }
}