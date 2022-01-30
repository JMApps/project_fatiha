import 'package:project_fatiha/data/database/db_about.dart';
import 'package:project_fatiha/data/service/database_service.dart';

class DatabaseQuery {
  final DatabaseService _db = DatabaseService();

  Future<List<DbAbout>> getAboutInfo() async {
    var dbClient = await _db.db;
    var res = await dbClient.query('Table_of_first_chapters');
    List<DbAbout>? firstVolumeChapters = res.isNotEmpty ? res.map((c) => DbAbout.fromMap(c)).toList() : null;
    return firstVolumeChapters!;
  }
}