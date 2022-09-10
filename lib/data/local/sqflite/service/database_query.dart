import 'package:project_fatiha/data/local/sqflite/model/tafseer_surah_item_model.dart';
import 'package:project_fatiha/data/local/sqflite/service/database_service.dart';

class DatabaseQuery {
  DatabaseService con = DatabaseService();

  Future<List<TafseerSurahItemModel>> getTafseerSurah() async {
    var dbClient = await con.db;
    var res = await dbClient.query('Table_of_tafseer_surah');
    List<TafseerSurahItemModel>? tafseerSurah = res.isNotEmpty ? res.map((c) => TafseerSurahItemModel.fromMap(c)).toList() : null;
    return tafseerSurah!;
  }
}