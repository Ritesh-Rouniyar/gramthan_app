class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });

  factory Animal.fromMap(Map<String, dynamic> map) {
    return Animal(
      id: map['id'],
      name: map['name'],
    );
  }
}