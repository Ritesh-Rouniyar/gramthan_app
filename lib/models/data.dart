class DataModel {
  final int id;
  final String farmerName;
  final String? farmerNumber;
  final String wardNo;
  final String registrationNumber;
  final String farmerRegistrationNumber;
  final String animalCount;
  final String vaccinationCount;
  final String? latitude;
  final String? longitude;

  DataModel({
    required this.id,
    required this.farmerName,
    this.farmerNumber,
    required this.farmerRegistrationNumber,
    required this.wardNo,
    required this.animalCount,
    required this.vaccinationCount,
    required this.registrationNumber,
    this.latitude,
    this.longitude
  });

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      id:map['id'],
      farmerName: map['name'],
      farmerNumber: map['phone'],
      wardNo: map['ward'],
      registrationNumber: map['registration_number'],
      farmerRegistrationNumber: map['farmer_registration_number'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      animalCount: map['total_count_sum'].toString(),
      vaccinationCount: map['vaccinated_count_sum'].toString(),
    );
  }
}
