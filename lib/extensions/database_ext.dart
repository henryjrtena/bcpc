import 'package:sqflite/sqflite.dart';

extension DatabaseExt on Database {
  Future<bool> login(String username, String password) async {
    final rows = await query(
      'users',
      where: 'username = ? AND password = ?',
      whereArgs: [username, password],
    );

    return rows.isNotEmpty;
  }
}
