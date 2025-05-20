import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper{
  DBHelper._();

  static final DBHelper getInstance = DBHelper._();

  static final String TABLE_FARMER = "farmers";
  static final String TABLE_FARMER_RECORD = "farmer_records";
  static final String TABLE_FARMER_RECORD_VACCINES = "farmer_records_vaccines";
  static final String TABLE_FARMER_VACCINES_REMARK = "farmer_vaccines_remark";
  static final String TABLE_VACCINE = "vaccines";
  static final String TABLE_ANIMAL = "animals";
  static final String TABLE_VACCINE_WITH_ANIMAL = "animal_vaccine";
  static final String COLUMN_ID = "id";
  static final String COLUMN_NAME = "name";
  static final String COLUMN_PHONE_FARMER = "phone";
  static final String COLUMN_WARD_FARMER = "ward";
  static final String COLUMN_CREATED_AT_FARMER = "created_at";
  static final String COLUMN_UPDATED_AT_FARMER = "updated_at";
  static final String COLUMN_TOTAL_COUNT = "total_count";
  static final String COLUMN_VACCINATED_COUNT = "vaccinated_count";
  static final String COLUMN_REGISTRATION_NUMBER= "registration_number";
  static final String COLUMN_IS_COMPLETED= "isCompleted";
  static final String COLUMN_REMARK= "remark";
  static final String COLUMN_LATITUDE= "latitude";
  static final String COLUMN_LONGITUDE= "longitude";

  Database? myDB;

  //open db if  else create
  Future<Database> getDB() async{
    myDB ??= await openDB();
    return myDB!;
  }

  Future<Database> openDB() async{
    Directory appDir = await getApplicationDocumentsDirectory();
    String dbPath = join(appDir.path,"anviDB.db");
    String farmerTableQuery = "create table $TABLE_FARMER ($COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, $COLUMN_NAME TEXT NOT NULL, $COLUMN_PHONE_FARMER TEXT UNIQUE,$COLUMN_REGISTRATION_NUMBER TEXT NOT NULL UNIQUE, $COLUMN_WARD_FARMER TEXT DEFAULT NULL, $COLUMN_CREATED_AT_FARMER TIMESTAMP DEFAULT CURRENT_TIMESTAMP, $COLUMN_UPDATED_AT_FARMER TIMESTAMP DEFAULT CURRENT_TIMESTAMP)";
    String vaccineTableQuery = "create table $TABLE_VACCINE ($COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, $COLUMN_NAME TEXT NOT NULL)";
    String animalTableQuery = "create table $TABLE_ANIMAL ($COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, $COLUMN_NAME TEXT NOT NULL)";
    String vaccineAnimalsQuery ="create table $TABLE_VACCINE_WITH_ANIMAL ($COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, animal_id INTEGER NOT NULL,vaccine_id INTEGER NOT NULL,FOREIGN KEY (animal_id) REFERENCES $TABLE_ANIMAL($COLUMN_ID) ON DELETE CASCADE,FOREIGN KEY (vaccine_id) REFERENCES $TABLE_VACCINE($COLUMN_ID) ON DELETE CASCADE)";
    String farmerRecordQuery = "create table $TABLE_FARMER_RECORD ($COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT,$COLUMN_REGISTRATION_NUMBER TEXT NOT NULL UNIQUE,$COLUMN_LONGITUDE TEXT,$COLUMN_LATITUDE TEXT,$COLUMN_IS_COMPLETED INTEGER DEFAULT 0, farmer_id INTEGER, $COLUMN_CREATED_AT_FARMER TIMESTAMP DEFAULT TIMESTAMP, $COLUMN_UPDATED_AT_FARMER TIMESTAMP DEFAULT TIMESTAMP,FOREIGN KEY (farmer_id) REFERENCES $TABLE_FARMER($COLUMN_ID) ON DELETE CASCADE)";
    String farmerRecordVaccinesQuery ="create table $TABLE_FARMER_RECORD_VACCINES ($COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT,farmer_record_id INTEGER NOT NULL, vaccine_id INTEGER NOT NULL,animal_id INTEGER NOT NULL,$COLUMN_TOTAL_COUNT TEXT DEFAULT NULL,$COLUMN_VACCINATED_COUNT TEXT DEFAULT NULL,$COLUMN_CREATED_AT_FARMER TIMESTAMP DEFAULT CURRENT_TIMESTAMP, $COLUMN_UPDATED_AT_FARMER TIMESTAMP DEFAULT CURRENT_TIMESTAMP,FOREIGN KEY (farmer_record_id) REFERENCES $TABLE_FARMER_RECORD($COLUMN_ID) ON DELETE CASCADE,FOREIGN KEY (vaccine_id) REFERENCES $TABLE_VACCINE($COLUMN_ID) ON DELETE CASCADE,FOREIGN KEY (animal_id) REFERENCES $TABLE_ANIMAL($COLUMN_ID) ON DELETE CASCADE)";
    String farmerVaccinesRemarkQuery ="create table $TABLE_FARMER_VACCINES_REMARK ($COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT,farmer_record_id INTEGER NOT NULL, vaccine_id INTEGER NOT NULL,$COLUMN_REMARK TEXT DEFAULT NULL,$COLUMN_CREATED_AT_FARMER TIMESTAMP DEFAULT CURRENT_TIMESTAMP, $COLUMN_UPDATED_AT_FARMER TIMESTAMP DEFAULT CURRENT_TIMESTAMP,FOREIGN KEY (farmer_record_id) REFERENCES $TABLE_FARMER_RECORD($COLUMN_ID) ON DELETE CASCADE,FOREIGN KEY (vaccine_id) REFERENCES $TABLE_VACCINE($COLUMN_ID) ON DELETE CASCADE)";
    return await openDatabase(dbPath,onCreate: (db,version){
      //create all tables
      //to enable foreign key support
      db.execute('PRAGMA foreign_keys = ON;');
      db.execute(farmerTableQuery);
      db.execute(vaccineTableQuery);
      db.execute(animalTableQuery);
      db.execute(vaccineAnimalsQuery);
      db.execute(farmerRecordQuery);
      db.execute(farmerRecordVaccinesQuery);
      db.execute(farmerVaccinesRemarkQuery);
    },version: 1);
  }

  void delete() async{
    Directory appDir = await getApplicationDocumentsDirectory();
    String dbPath = join(appDir.path,"anviDB.db");
    await deleteDatabase(dbPath);
  }
}