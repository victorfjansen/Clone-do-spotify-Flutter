import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'package:untitled/shared/data/DAOS/User_DAO.dart';

Future<Database> getDatabase() async {
  final path = join(await getDatabasesPath(), 'userV2.db');
  print(UserDao.tableSql);
  return openDatabase(path,
      onCreate: (db, version) => db.execute(UserDao.tableSql), version: 1);
}
