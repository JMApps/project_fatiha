class DbTajweed {
  final int id;
  final String ayah;
  final String tajweedTitle;
  final String tajweedContent;

  DbTajweed.fromMap(dynamic object)
      : id = object['_id'],
        ayah = object['ayah'],
        tajweedTitle = object['tajweed_title'],
        tajweedContent = object['tajweed_content'];
}
