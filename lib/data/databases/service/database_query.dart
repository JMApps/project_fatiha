import 'package:project_fatiha/data/databases/model/about.dart';
import 'package:project_fatiha/data/databases/model/error.dart';
import 'package:project_fatiha/data/databases/model/tajweed.dart';
import 'package:project_fatiha/data/databases/model/words.dart';
import 'package:project_fatiha/data/databases/service/database_service.dart';

class DatabaseQuery {
  final DatabaseService _db = DatabaseService();

  Future<List<About>> getAboutInfo() async {
    var dbClient = await _db.db;
    var res = await dbClient.query('Table_of_about_fatiha');
    List<About>? aboutInfo = res.isNotEmpty ? res.map((c) => About.fromMap(c)).toList() : null;
    return aboutInfo!;
  }

  Future<List<Tajweed>> getTajweedContent() async {
    var dbClient = await _db.db;
    var res = await dbClient.query('Table_of_tajweed_fatiha');
    List<Tajweed>? tajweedContent = res.isNotEmpty ? res.map((c) => Tajweed.fromMap(c)).toList() : null;
    return tajweedContent!;
  }

  Future<List<Words>> getWordsContent() async {
    var dbClient = await _db.db;
    var res = await dbClient.query('Table_of_words_fatiha');
    List<Words>? wordsContent = res.isNotEmpty ? res.map((c) => Words.fromMap(c)).toList() : null;
    return wordsContent!;
  }

  Future<List<Error>> getErrorsContent() async {
    var dbClient = await _db.db;
    var res = await dbClient.query('Table_of_error_fatiha');
    List<Error>? errorsContent = res.isNotEmpty ? res.map((c) => Error.fromMap(c)).toList() : null;
    return errorsContent!;
  }
}