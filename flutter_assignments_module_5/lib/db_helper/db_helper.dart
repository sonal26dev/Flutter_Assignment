import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../model/task.dart';
class DbHelper{
  static const String _dbname = 'task.db';
  static const int _dbversion = 1;
  static const String _tableTask = 'taskList';
  static const String _id = 'id';
  static const String _title = 'title';
  static const String _desc = 'description';
  static const String _date = 'date';
  static const String _time = 'time';
  static const String _priority = 'priority';

  static Database? _database;

  static final DbHelper _instance = DbHelper._internal();


  factory DbHelper() {
    return _instance;
  }

  DbHelper._internal();

  Future<Database?> getDatabase() async{
    _database ??= await createDatabase();
    return _database;
  }

  Future<Database> createDatabase() async{
    var databasePath = join(await getDatabasesPath(), _dbname);
    // print('datbase path : $databasePath');

    return await openDatabase(
        databasePath,
        version: _dbversion,
        onCreate: (db, version){
          return db.execute('CREATE TABLE $_tableTask('
              '$_id INTEGER PRIMARY KEY AUTOINCREMENT,'
              '$_title TEXT, '
              '$_desc TEXT, '
              '$_date TEXT, '
              '$_time TEXT, '
              '$_priority TEXT )');
        }
    );
  }
  Future<int> insertTask(Task person) async{
    var db = await getDatabase();
    // print(person.toMap().toString());
    return db!.insert(_tableTask, person.toMap());
  }

  Future<List<Task>> getTask() async {
    var db = await getDatabase();
    List<Map<String, dynamic>> maps = await db!.query(_tableTask, orderBy: '$_date DESC');
    return List.generate(maps.length, (index) => Task.fromMap(maps[index])).toList();

  }

  Future<int> deleteTask(int id) async {
    var db = await getDatabase();
    return db!.delete(_tableTask, where: '$_id=?', whereArgs: [id]);
  }

  Future<int> updateTask(Task person) async {
    var db = await getDatabase();
    return db!.update(_tableTask, person.toMap(),where: '$_id=?', whereArgs: [person.id]);
  }

}