import 'package:clash_of_clans/core/utils/utils.dart';
import 'package:flutter/material.dart';

class CharacterDetailPage extends StatelessWidget {
  final String name;
  final String imageUrl;
  final Color bgColor;

  const CharacterDetailPage({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image and Background Section
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32))),
              child: Column(
                children: [
                  Image.asset(
                    imageUrl,
                    height: 400,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),

            // Title Section
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Stats Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Level and Type
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/icon_level.webp',
                            width: 15,
                            height: 15,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Level 1',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/icon_ground.webp',
                            width: 24,
                            height: 24,
                          ),
                          const Text(
                            'Ground',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  // DPS, Elixir, Health Stats
                  buildStatRow(
                    icon: Image.asset(
                      'assets/images/icon_dps.webp',
                      width: 15,
                      height: 15,
                    ),
                    label: 'DPS',
                    // Ramdom number from Utils
                    value: Utils.getRandomNumber(1, 300).toString(),
                    // Color code for DPS - yellow
                    colorCode: '0xFFFFD700',
                  ),
                  const SizedBox(height: 30),
                  buildStatRow(
                    icon: Image.asset(
                      'assets/images/icon_elixir.webp',
                      width: 15,
                      height: 15,
                    ),
                    label: 'Elixir',
                    value: Utils.getRandomNumber(1, 300).toString(),
                    // Color code for Elixir - pink
                    colorCode: '0xFFFFC0CB',
                  ),
                  const SizedBox(height: 30),
                  buildStatRow(
                    icon: Image.asset(
                      'assets/images/icon_health.webp',
                      width: 15,
                      height: 15,
                    ),
                    label: 'Health',
                    value: Utils.getRandomNumber(1, 300).toString(),
                    // Color code for Health - red
                    colorCode: '0xFFFF0000',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Method to Create Stat Rows
  Widget buildStatRow(
      {required Image icon,
      required String label,
      required String value,
      // Add required parameter for color code
      required String colorCode}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            icon,
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Container(
          height: 10,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: FractionallySizedBox(
            widthFactor:
                double.tryParse(value)! / 300, // Normalize with max value
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                color: Color(int.parse(colorCode)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
