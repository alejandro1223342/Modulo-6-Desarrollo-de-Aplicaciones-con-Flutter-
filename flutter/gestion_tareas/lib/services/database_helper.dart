import 'package:gestion_tareas/models/task.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'task.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute('''
        CREATE TABLE task (
          id INT PRIMARY KEY,
          titulo TEXT NOT NULL,
          descripcion TEXT NOT NULL,
          fechaVencimiento INT NOT NULL,
          estado TEXT NOT NULL
        )
      ''');
      },
    );
  }

  Future<void> insertTask(Task task) async {
    final db = await database;
    await db.insert(
      'task',
      task.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Task>> getTask() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('task');

    return List.generate(maps.length, (i) {
      return Task(
        id: maps[i]['id'],
        titulo: maps[i]['titulo'],
        descripcion: maps[i]['descripcion'],
        fechaVencimiento: maps[i]['fechaVencimiento'],
        estado: maps[i]['estado'],
      );
    });
  }

  Future<void> updateTask(Task task) async {
    final db = await database;
    await db.update(
      'task',
      task.toMap(),
      where: 'id = ?',
      whereArgs: [task.id],
    );
  }

  Future<void> deleteTask(int id) async {
    final db = await database;
    await db.delete('task', where: 'id = ?', whereArgs: [id]);
  }
}
