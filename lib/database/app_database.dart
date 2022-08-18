import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void createDataBase() {
  getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'dailyphrase.db');
    openDatabase(path, onCreate: (db, version){
      db.execute('CREATE TABLE author('
          'id INTEGER PRIMARY KEY,'
          'name TEXT)');
    }, version: 1);
  });
}