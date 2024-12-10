import 'dart:math';

class Utils {
  // Function to generate a random integer within a range
  static int getRandomNumber(int min, int max) {
    final random = Random();
    return min + random.nextInt(max - min + 1);
  }

  // Function to generate a random double within a range
  static double getRandomDouble(double min, double max) {
    final random = Random();
    return min + random.nextDouble() * (max - min);
  }
}
