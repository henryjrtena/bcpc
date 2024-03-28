import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'abella.db');
    return openDatabase(
      path,
      version: 1,
      onCreate: _createDb,
    );
  }

  Future<void> _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, password TEXT)
    ''');

    await db.execute('''
      INSERT INTO users(username, password) VALUES("jniedo", "admin")
    ''');

    await db.execute('''
      CREATE TABLE children(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, gender INTEGER, birthdate TEXT, birthRegistered TEXT, zone TEXT, mothersName TEXT, fathersName TEXT)
    ''');

    await db.execute('''
      CREATE TABLE survival(id INTEGER PRIMARY KEY AUTOINCREMENT, fic INT, vitA INT, measles INT, defaulter INT, covid INT, height FLOAT, weight FLOAT, childId INTEGER)
    ''');

    await db.execute('''
      CREATE TABLE development(id INTEGER PRIMARY KEY AUTOINCREMENT, preSchoolEducare TEXT, preSchoolMontessori TEXT, elementaryGrade TEXT, elementarySchool TEXT, highSchoolGrade TEXT, highSchoolSchool TEXT, als INTEGER, osc INTEGER, childId INTEGER)
    ''');

    await db.execute('''
      CREATE TABLE protection(id INTEGER PRIMARY KEY AUTOINCREMENT, car INTEGER, withInterventionProgram INTEGER, cicl INTEGER, withDiversionProgram INTEGER, cnsp INTEGER, disability INTEGER, childId INTEGER)
    ''');
  }

  Future<int> insert(String tableName, Map<String, dynamic> row) async {
    Database db = await database;
    return await db.insert(tableName, row);
  }

  Future<List<Map<String, dynamic>>> queryAll(
    String tableName,
  ) async {
    Database db = await database;
    return await db.query(tableName);
  }

  Future<int> update(String tableName, Map<String, dynamic> row) async {
    Database db = await database;
    int id = row['id'];
    return await db.update(tableName, row, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> delete(String tableName, int id) async {
    Database db = await database;
    return await db.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }
}
