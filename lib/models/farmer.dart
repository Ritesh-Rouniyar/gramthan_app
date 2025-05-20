class Farmer {
  final int id;
  final String ?phone;
  final String name;
  final String ward;
  final String ?registrationNo;
  final String updatedAt;

  Farmer({
    required this.id,
    this.phone,
    required this.name,
    required this.ward,
    required this.updatedAt,
    this.registrationNo
  });

  factory Farmer.fromMap(Map<String, dynamic> map) {
    return Farmer(
      id: map['id'],
      phone: map['phone'],
      name: map['name'],
      ward: map['ward'],
      updatedAt: map['updated_at'],
      registrationNo: map['registration_number']
    );
  }

String? selectedGender;
String? occupation;


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'phone': phone,
      'name': name,
      'ward': ward,
      'updated_at': updatedAt,
      'registration_no':registrationNo
    };
  }
}
