import 'package:avis/data/local/db_helper.dart';
import 'package:avis/models/animal.dart';
import 'package:avis/models/vaccine.dart';
import 'package:sqflite/sqflite.dart';

class VaccinesRepository{
  get _db => DBHelper.getInstance;

  Future<List<Vaccine>> getAllVaccines() async{
    var db = await _db.getDB();
    var result =  await db.query(DBHelper.TABLE_VACCINE);
    List<Map<String, dynamic>> vaccineData = List<Map<String, dynamic>>.from(result);
    List<Vaccine> vaccines = vaccineData.map((Map<String, dynamic> map) => Vaccine.fromMap(map)).toList();
    for (var vaccine in vaccines) {
      vaccine.animals = await getVaccineAnimals(vaccine.id);
    }
    return vaccines;
  }

  Future<List<Animal>> getVaccineAnimals(int vacId) async{
    var db = await _db.getDB();
    var result = await db.rawQuery("""
      SELECT a.*
      FROM ${DBHelper.TABLE_ANIMAL} a
      JOIN ${DBHelper.TABLE_VACCINE_WITH_ANIMAL} av ON av.animal_id = a.id
      WHERE av.vaccine_id = ?
    """, [vacId]);
    List<Map<String, dynamic>> animalData = List<Map<String, dynamic>>.from(result);
    return animalData.map((Map<String, dynamic> map) => Animal.fromMap(map)).toList();
  }

  Future<int> insertVaccine(String name,int id) async{
    var db = await _db.getDB();
    int rowEffected = await db.insert(DBHelper.TABLE_VACCINE, {
      DBHelper.COLUMN_NAME:name,
      DBHelper.COLUMN_ID:id,
    },conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return rowEffected;
  }

  Future<int> insertAnimal(String name,int id) async{
    var db = await _db.getDB();
    int rowEffected = await db.insert(DBHelper.TABLE_ANIMAL, {
      DBHelper.COLUMN_NAME:name,
      DBHelper.COLUMN_ID:id,
    },conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return rowEffected;
  }

  Future<int> assignAnimalTOVaccine(int animalId,int vaccinesId) async{
    var db = await _db.getDB();
    int rowEffected = await db.insert(DBHelper.TABLE_VACCINE_WITH_ANIMAL, {
      'animal_id':animalId,
      'vaccine_id':vaccinesId,
    },conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return rowEffected;
  }

  Future<void> deleteAllRecords() async{
    var db= await _db.getDB();
    await db.delete(DBHelper.TABLE_VACCINE_WITH_ANIMAL);
    await db.delete(DBHelper.TABLE_ANIMAL);
    await db.delete(DBHelper.TABLE_VACCINE);
    await db.rawDelete('DELETE FROM sqlite_sequence WHERE name = ?', [DBHelper.TABLE_VACCINE_WITH_ANIMAL]);
    await db.rawDelete('DELETE FROM sqlite_sequence WHERE name = ?', [DBHelper.TABLE_ANIMAL]);
    await db.rawDelete('DELETE FROM sqlite_sequence WHERE name = ?', [DBHelper.TABLE_VACCINE]);
  }

}