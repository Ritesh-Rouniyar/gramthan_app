import 'package:avis/models/animal.dart';

class Vaccine {
  final int id;
  final String name;
  List<Animal> animals;

  Vaccine({
    required this.id,
    required this.name,
    this.animals = const []
  });

  factory Vaccine.fromMap(Map<String, dynamic> map) {
    return Vaccine(
      id: map['id'],
      name: map['name'],
      animals: [],
    );
  }

  void assignAnimals(List<Animal> allAnimals) {
    animals = allAnimals;
  }
}