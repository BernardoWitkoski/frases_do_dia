import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDataBase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'dailyphrase.db');
    return openDatabase(path, onCreate: (db, version){
      db.execute('CREATE TABLE author('
          'id INTEGER PRIMARY KEY,'
          'name TEXT)');
    }, version: 1);
  });
}