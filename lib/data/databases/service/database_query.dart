import 'package:project_fatiha/data/databases/db_about.dart';
import 'package:project_fatiha/data/databases/service/database_service.dart';

class DatabaseQuery {
  final DatabaseService _db = DatabaseService();

  Future<List<DbAbout>> getAboutInfo() async {
    var dbClient = await _db.db;
    var res = await dbClient.query('Table_of_about_fatiha');
    List<DbAbout>? firstVolumeChapters = res.isNotEmpty ? res.map((c) => DbAbout.fromMap(c)).toList() : null;
    return firstVolumeChapters!;
  }
}