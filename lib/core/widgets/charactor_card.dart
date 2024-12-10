import 'package:clash_of_clans/app/character_detail_page.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final Color bgColor;

  const CharacterCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to CharacterDetailPage
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterDetailPage(
              name: name,
              imageUrl: imageUrl,
              bgColor: bgColor,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(16),
          shape: BoxShape.rectangle,
        ),
        // Set height to 200
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              // Ensures the image fits within the allocated space
              child: Image.asset(
                imageUrl,
              ),
            ),
            Flexible(
              child: Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
