import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'Appointment/appointmentmodel.dart';
import "package:finalproject/user/user.dart";
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();

  static Database? _database;
  
  DatabaseHelper._init();

  Future<Database> get database async {
    
    if (_database != null) return _database!;
    _database = await _initDB('healthlink.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    const userTable = '''
    CREATE TABLE users(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      email TEXT NOT NULL
    )
    ''';

    const appointmentTable = '''
    CREATE TABLE appointments(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL,
      description TEXT NOT NULL,
      date TEXT NOT NULL
    )
    ''';

    await db.execute(userTable);
    await db.execute(appointmentTable);
  }

  Future<void> insertUser(User user) async {
    final db = await instance.database;
    await db.insert(
      'users',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<User>> users() async {
    final db = await instance.database;
    final List<Map<String, Object?>> userMaps = await db.query('users');
    return [
      for (final {
            'id': id as int,
            'name': name as String,
            'email': email as String,
          } in userMaps)
        User(id: id, name: name, email: email),
    ];
  }

  Future<void> updateUser(User user) async {
    final db = await instance.database;
    await db.update(
      'users',
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  Future<void> deleteUser(int id) async {
    final db = await instance.database;
    await db.delete(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> insertAppointment(Appointment appointment) async {
    final db = await instance.database;
    await db.insert(
      'appointments',
      appointment.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Appointment>> appointments() async {
    final db = await instance.database;
    final List<Map<String, Object?>> appointmentMaps =
        await db.query('appointments');
    return [
      for (final {
            'id': id as int,
            'title': title as String,
            'description': description as String,
            'date': date as String,
          } in appointmentMaps)
        Appointment(
            id: id,
            title: title,
            description: description,
            date: DateTime.parse(date)),
    ];
  }

  Future<void> updateAppointment(Appointment appointment) async {
    final db = await instance.database;
    await db.update(
      'appointments',
      appointment.toMap(),
      where: 'id = ?',
      whereArgs: [appointment.id],
    );
  }

  Future<void> deleteAppointment(int id) async {
    final db = await instance.database;
    await db.delete(
      'appointments',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
