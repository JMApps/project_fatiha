import 'package:project_fatiha/data/databases/model/about.dart';
import 'package:project_fatiha/data/databases/model/tajweed.dart';
import 'package:project_fatiha/data/databases/model/words.dart';
import 'package:project_fatiha/data/databases/service/database_service.dart';

class DatabaseQuery {
  final DatabaseService _db = DatabaseService();

  Future<List<About>> getAboutInfo() async {
    var dbClient = await _db.db;
    var res = await dbClient.query('Table_of_about_fatiha');
    List<About>? firstVolumeChapters = res.isNotEmpty ? res.map((c) => About.fromMap(c)).toList() : null;
    return firstVolumeChapters!;
  }

  Future<List<Tajweed>> getTajweedContent() async {
    var dbClient = await _db.db;
    var res = await dbClient.query('Table_of_tajweed_fatiha');
    List<Tajweed>? firstVolumeChapters = res.isNotEmpty ? res.map((c) => Tajweed.fromMap(c)).toList() : null;
    return firstVolumeChapters!;
  }

  Future<List<Words>> getWordsContent() async {
    var dbClient = await _db.db;
    var res = await dbClient.query('Table_of_words_fatiha');
    List<Words >? firstVolumeChapters = res.isNotEmpty ? res.map((c) => Words.fromMap(c)).toList() : null;
    return firstVolumeChapters!;
  }
}