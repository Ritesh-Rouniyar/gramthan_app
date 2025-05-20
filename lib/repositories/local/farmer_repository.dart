import 'dart:math';

import 'package:avis/data/local/db_helper.dart';
import 'package:avis/models/farmer.dart';
import 'package:sqflite/sqflite.dart';

class FarmerRepository{
  get _db => DBHelper.getInstance;

  Future<List<Farmer>> getAllFarmer() async{
    var db = await _db.getDB();
    var result =  await db.query(DBHelper.TABLE_FARMER);
    List<Map<String, dynamic>> farmersMap = List<Map<String, dynamic>>.from(result);
    List<Farmer> farmers = farmersMap.map((Map<String, dynamic> map) => Farmer.fromMap(map)).toList();
    return farmers;
  }

  Future<int> insertFarmerAndFarmerRecord({String ?phone,required String name,required String ward,required String registrationNo, required String gender}) async{
    var db = await _db.getDB();
    var existingFarmer = await db.query(
      DBHelper.TABLE_FARMER,
      where: '${DBHelper.COLUMN_PHONE_FARMER} = ? OR ${DBHelper.COLUMN_REGISTRATION_NUMBER} = ?',
      whereArgs: [phone,registrationNo],
    );
    int rowEffected1;
    if (existingFarmer.isNotEmpty) {
      rowEffected1 = await db.update(
        DBHelper.TABLE_FARMER,
        {
          DBHelper.COLUMN_NAME: name,
          DBHelper.COLUMN_WARD_FARMER: ward,
          DBHelper.COLUMN_UPDATED_AT_FARMER: DateTime.now().toIso8601String(),
        },
        where: '${DBHelper.COLUMN_PHONE_FARMER} = ?',
        whereArgs: [phone],
      );
    } else {
      rowEffected1 = await db.insert(
        DBHelper.TABLE_FARMER,
        {
          DBHelper.COLUMN_PHONE_FARMER: phone,
          DBHelper.COLUMN_NAME: name,
          DBHelper.COLUMN_WARD_FARMER: ward,
          DBHelper.COLUMN_REGISTRATION_NUMBER:registrationNo,
          DBHelper.COLUMN_UPDATED_AT_FARMER: DateTime.now().toIso8601String(),
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
    int rowEffected = await db.insert(DBHelper.TABLE_FARMER_RECORD, {
      'farmer_id':rowEffected1,
      DBHelper.COLUMN_REGISTRATION_NUMBER:generateRegistrationNumber(),
      DBHelper.COLUMN_UPDATED_AT_FARMER: DateTime.now().toIso8601String()
    },conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return rowEffected;
  }
  String generateRegistrationNumber() {
    final random = Random();
    int firstPart = random.nextInt(100);
    int secondPart = random.nextInt(10);
    int thirdPart = random.nextInt(10000000);
    return '$firstPart-$secondPart-$thirdPart';
  }

  Future<int> deleteFarmer(int id) async {
    var db = await _db.getDB();
    int rowEffected = await db.delete(
      DBHelper.TABLE_FARMER,
      where: '${DBHelper.COLUMN_ID} = ?',
      whereArgs: [id],
    );
    return rowEffected;
  }

  Future<int> checkRecord(int id) async {
    var db = await _db.getDB();
    List<Map<String, dynamic>> result = await db.query(
      DBHelper.TABLE_FARMER_RECORD,
      where: 'farmer_id = ?',
      whereArgs: [id],
    );
    return result.length;
  }
}