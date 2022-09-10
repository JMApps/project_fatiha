import 'package:flutter/cupertino.dart';
import 'package:project_fatiha/data/local/sqflite/service/database_query.dart';

class DatabaseState with ChangeNotifier {

  final _databaseQuery = DatabaseQuery();

  DatabaseQuery get getDatabaseQuery => _databaseQuery;
}