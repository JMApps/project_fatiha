import 'package:project_fatiha/data/databases/model/db_about.dart';
import 'package:project_fatiha/data/databases/model/db_tajweed.dart';
import 'package:project_fatiha/data/databases/service/database_service.dart';

class DatabaseQuery {
  final DatabaseService _db = DatabaseService();

  Future<List<DbAbout>> getAboutInfo() async {
    var dbClient = await _db.db;
    var res = await dbClient.query('Table_of_about_fatiha');
    List<DbAbout>? firstVolumeChapters = res.isNotEmpty ? res.map((c) => DbAbout.fromMap(c)).toList() : null;
    return firstVolumeChapters!;
  }

  Future<List<DbTajweed>> getTajweedContent() async {
    var dbClient = await _db.db;
    var res = await dbClient.query('Table_of_tajweed_fatiha');
    List<DbTajweed>? firstVolumeChapters = res.isNotEmpty ? res.map((c) => DbTajweed.fromMap(c)).toList() : null;
    return firstVolumeChapters!;
  }
}