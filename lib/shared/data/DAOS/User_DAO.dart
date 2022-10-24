import 'package:sqflite/sqflite.dart';
import 'package:untitled/shared/data/database.dart';

class UserDao {
  static const String _tableName=  'userTable';
  static const String _username = 'username';
  static const String _password = 'password';

  static const String tableSql = 'CREATE TABLE $_tableName ('
      '$_username TEXT, '
      '$_password TEXT)';

  Map<String, dynamic> _toMap({required String username, required String password}) {
    final Map<String, dynamic> userMap = {};
    userMap[_username] = username;
    userMap[_password] = password;
    return userMap;
  }

  Future<List> get() async {
    final Database database = await getDatabase();
    final List foundUser = await database.query(_tableName);
    return foundUser;
  }
  
  Future<void> create({required String username, required String password}) async {
    final Database database = await getDatabase();
    await database.insert(_tableName, _toMap(username: username, password: password));
  }

  Future<void> delete() async {
    final Database database = await getDatabase();
    await database.delete(_tableName);
  }
}