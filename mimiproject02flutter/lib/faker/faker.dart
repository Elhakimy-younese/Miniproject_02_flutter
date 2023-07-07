import 'dart:math';

class Faker {
  final Random _random = Random();

  String generateFirstName() {
    final firstNames = ['John', 'Emma', 'Michael', 'Sophia', 'James', 'Olivia'];
    return firstNames[_random.nextInt(firstNames.length)];
  }

  String generateLastName() {
    final lastNames = ['Smith', 'Johnson', 'Brown', 'Davis', 'Wilson'];
    return lastNames[_random.nextInt(lastNames.length)];
  }

  String generateFullName() {
    final firstName = generateFirstName();
    final lastName = generateLastName();
    return '$firstName $lastName';
  }
  
}
