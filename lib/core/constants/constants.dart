// lib/constants.dart
import 'package:clash_of_clans/core/widgets/charactor_card.dart';
import 'package:flutter/material.dart';

const Color baseThemeColor = Color(0xFFFFFFFF); // Example base theme color

const Color colorFFF4CF = Color(0xFFFFF4CF);
const Color colorFFBDB8 = Color(0xFFFFBDB8);
const Color colorC6FFC5 = Color(0xFFC6FFC5);
const Color colorCACBFF = Color(0xFFCACBFF);

const List<CharacterCard> characterCards = [
  CharacterCard(
    // Add the Barbarian image URL in assets/images/barbarian.png
    imageUrl: 'assets/images/barbarian.webp',
    name: 'Barbarian',
    bgColor: colorFFF4CF,
  ),
  CharacterCard(
    imageUrl: 'assets/images/balloon.webp',
    name: 'Balloon',
    bgColor: colorFFBDB8,
  ),
  CharacterCard(
    imageUrl: 'assets/images/baby-dragon.webp', // Add Baby Dragon image URL
    name: 'Baby Dragon',
    bgColor: colorC6FFC5,
  ),
  CharacterCard(
    imageUrl: 'assets/images/dragon.webp', // Add Dragon image URL
    name: 'Dragon',
    bgColor: colorCACBFF,
  ),
];
